const game = {
    groundWidth : 700,
    groundHeight : 400,
    groundColor: "#000000",
    netWidth : 6,
    netColor : "#FFFFFF",
   
    groundLayer : null,
   
    init : function() {
      this.groundLayer = game.display.createLayer("terrain", this.groundWidth, this.groundHeight, undefined, 0, "#000000", 0, 0); 
    }
   
  };