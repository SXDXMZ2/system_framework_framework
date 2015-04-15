.class Landroid/view/GLES20RenderLayer;
.super Landroid/view/GLES20Layer;
.source "GLES20RenderLayer.java"


# instance fields
.field private final mCanvas:Landroid/view/GLES20Canvas;

.field private mLayerHeight:I

.field private mLayerWidth:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GLES20Layer;-><init>(IIZ)V

    .line 41
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 42
    .local v0, "layerInfo":[I
    invoke-static {p1, p2, p3, v0}, Landroid/view/GLES20Canvas;->nCreateLayer(IIZ[I)I

    move-result v3

    iput v3, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 43
    iget v3, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v3, :cond_1

    .line 44
    aget v3, v0, v2

    iput v3, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    .line 45
    aget v3, v0, v1

    iput v3, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    .line 47
    new-instance v3, Landroid/view/GLES20Canvas;

    iget v4, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-nez p3, :cond_0

    :goto_0
    invoke-direct {v3, v4, v1}, Landroid/view/GLES20Canvas;-><init>(IZ)V

    iput-object v3, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 48
    new-instance v1, Landroid/view/GLES20Layer$Finalizer;

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-direct {v1, v2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    .line 53
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    iput-object v4, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 51
    iput-object v4, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_1
.end method


# virtual methods
.method end(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "currentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 97
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 100
    :cond_0
    instance-of v1, p1, Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_1

    .line 101
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1    # "currentCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->resume()V

    .line 103
    :cond_1
    return-void
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "dirtyRect"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v1}, Landroid/view/GLES20Canvas;->getRenderer()I

    move-result v1

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1    # "displayList":Landroid/view/DisplayList;
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nUpdateRenderLayer(IIIIIII)V

    .line 130
    return-void
.end method

.method resize(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 65
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 67
    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-ne p1, v2, :cond_2

    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-eq p2, v2, :cond_3

    .line 68
    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 70
    .local v0, "layerInfo":[I
    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v2, p1, p2, v0}, Landroid/view/GLES20Canvas;->nResizeLayer(III[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    .line 72
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    .line 80
    .end local v0    # "layerInfo":[I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result v1

    goto :goto_0

    .line 75
    .restart local v0    # "layerInfo":[I
    :cond_4
    iput v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 76
    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    .line 77
    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    goto :goto_1
.end method

.method setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 86
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetOpaqueLayer(IZ)V

    .line 87
    return-void
.end method

.method setTransform(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 123
    return-void
.end method

.method start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .locals 3
    .param p1, "currentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    instance-of v1, p1, Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_0

    .line 108
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1    # "currentCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->interrupt()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 111
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    if-eqz v0, :cond_1

    .line 112
    iget v1, p0, Landroid/view/HardwareLayer;->mWidth:I

    iget v2, p0, Landroid/view/HardwareLayer;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 115
    :cond_1
    return-object v0
.end method
