        <script src="http://yui.yahooapis.com/3.9.0/build/yui/yui-min.js"></script>
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
YUI().use('resize');
YUI().use('resize', function(Y) {
    var resize = new Y.Resize({
        //Selector of the node to resize
        node: '#demo'
    });   
});
</script>
<div id="demo"><table><tr><td width=100px>aaaaasdfsdfjsdlflsdfjlskdfjsdljfsldfjlsdjfklsdfjklsdjfsdklfja</td></tr></table></div>