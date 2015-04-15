.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayList:Landroid/view/GLES20DisplayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0, v0}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 47
    return-void
.end method

.method static obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;
    .locals 2
    .param p0, "displayList"    # Landroid/view/GLES20DisplayList;

    .prologue
    .line 50
    sget-object v1, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 51
    .local v0, "canvas":Landroid/view/GLES20RecordingCanvas;
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    .end local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    .line 54
    .restart local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    :cond_0
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 55
    return-object v0
.end method

.method private recordShaderBitmap(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 76
    .local v0, "shader":Landroid/graphics/Shader;
    instance-of v1, v0, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v1, v1, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    check-cast v0, Landroid/graphics/BitmapShader;

    .end local v0    # "shader":Landroid/graphics/Shader;
    iget-object v2, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 120
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 127
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 129
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 134
    invoke-super/range {p0 .. p8}, Landroid/view/GLES20Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method public drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    .locals 2
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    move-result v0

    .line 149
    .local v0, "status":I
    iget-object v1, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v1, v1, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return v0
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 155
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 157
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 162
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 163
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 168
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 169
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 175
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/view/GLES20Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 180
    invoke-direct {p0, p1}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunks"    # [B
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 187
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 192
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 198
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 199
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 204
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 205
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 216
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 217
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 210
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 221
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 223
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 228
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 239
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 240
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 241
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 253
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 245
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 246
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 233
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 234
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 264
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 265
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 266
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 258
    invoke-super/range {p0 .. p7}, Landroid/view/GLES20Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-direct {p0, p7}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 260
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "dir"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 278
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    .line 279
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 280
    return-void
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "dir"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 271
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 272
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 273
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 286
    invoke-super/range {p0 .. p12}, Landroid/view/GLES20Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 288
    invoke-direct {p0, p12}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 289
    return-void
.end method

.method end(I)I
    .locals 1
    .param p1, "nativeDisplayList"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/GLES20Canvas;->getDisplayList(I)I

    move-result v0

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 60
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->resetDisplayListRenderer()V

    .line 61
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method
