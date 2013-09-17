<script type="text/javascript" src="/ea/common/yui330/build/yui/yui-min.js"></script>
<style>
#demo {
    height: 100px;
    width: 100px;
    border: 1px solid black;
    background-color: #8DD5E7;
    cursor: move;
}
</style>
<script> 
YUI().use('dd-drag');
YUI().use('dd-drag', function(Y) {
    //Selector of the node to make draggable
    var dd = new Y.DD.Drag({
        node: '#demo'
    });   
});
</script>
<div id="demo">Drag Me</div>