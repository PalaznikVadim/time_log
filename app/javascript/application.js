// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as d3 from 'd3'

// Sample data for the bar chart
const data = [30, 70, 120, 200, 50];

// Create an SVG container
const svg = d3.select("svg");

// Create bars for the data
svg.selectAll("rect")
    .data(data)
    .enter().append("rect")
    .attr("class", "bar")
    .attr("x", (d, i) => i * 80)
    .attr("y", d => 200 - d)
    .attr("width", 75)
    .attr("height", d => d);

// Add text labels to the bars
svg.selectAll("text")
    .data(data)
    .enter().append("text")
    .text(d => d)
    .attr("x", (d, i) => i * 80 + 38)
    .attr("y", d => 200 - d + 15)
    .attr("text-anchor", "middle")
    .attr("font-family", "sans-serif")
    .attr("font-size", "14px")
    .attr("fill", "white");