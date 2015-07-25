<%@ include file="master.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<meta charset="utf-8">
<style>
.node circle 
{
  cursor: pointer;
  stroke: #3182bd;
  stroke-width: 2px;
}
.node text 
{
  font: 20px sans-serif;
  pointer-events: none;
  text-anchor: middle;
}
line.link 
{
  fill: none;
  stroke: #9ecae1;
  stroke-width: 3px;
}
</style>
<body>
<script src="js/d3.min.js"></script>
<script>
var width = 1000,
    height = 800,
    root;
var force = d3.layout.force()
    .linkDistance(150)
    .charge(-220)
    .gravity(.00)
    .size([width, height])
    .on("tick", tick);
var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height);
var link = svg.selectAll(".link"),
    node = svg.selectAll(".node");
d3.json("File/graph.json", function(error, json) 
{
  if (error) throw error;
  root = json;
  update();
});
function update() 
{
  var nodes = flatten(root),links = d3.layout.tree().links(nodes);
  force
      .nodes(nodes)
      .links(links)
      .start();
  link = link.data(links, function(d) { return d.target.id; });
  link.exit().remove();
  link.enter().insert("line", ".node")
      .attr("class", "link");
  node = node.data(nodes, function(d) { return d.id; });
  node.exit().remove();
  var nodeEnter = node.enter().append("g")
      .attr("class", "node")
      .on("click", click)
      .call(force.drag);
  nodeEnter.append("circle")
      .attr("r", function(d) { return Math.sqrt(d.size) / 10 || 40; });
  nodeEnter.append("text")
      .attr("dy", ".35em")
      .text(function(d) { return d.name; });
  node.select("circle")
      .style("fill", color);
}
function tick() {
  link.attr("x1", function(d) { return d.source.x; })
      .attr("y1", function(d) { return d.source.y; })
      .attr("x2", function(d) { return d.target.x; })
      .attr("y2", function(d) { return d.target.y; });
  node.attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; });
}
function color(d) 
{
  return d._children ? "#3182bd" // collapsed package
      : d.children ? "#c6dbef" // expanded package
      : "#9A9191"; // leaf node
}
function click(d) 
{
  if (d3.event.defaultPrevented) return; // ignore drag
  if (d.children) {
    d._children = d.children;
    d.children = null;
  } else {
    d.children = d._children;
    d._children = null;
  }
  update();
}

function flatten(root) 
{
  var nodes = [], i = 0;
  function recurse(node) 
  {
    if (node.children) node.children.forEach(recurse);
    if (!node.id) node.id = ++i;
    nodes.push(node);
  }
  recurse(root);
  return nodes;
}
</script>