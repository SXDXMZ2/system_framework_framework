.class final Landroid/graphics/drawable/BitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapState"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mGravity:I

.field mPaint:Landroid/graphics/Paint;

.field mRebuildShader:Z

.field mTargetDensity:I

.field mTileModeX:Landroid/graphics/Shader$TileMode;

.field mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 566
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 559
    const/16 v0, 0x77

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 560
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 561
    iput-object v2, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 562
    iput-object v2, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 563
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 567
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 568
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V
    .locals 2
    .param p1, "bitmapState"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .prologue
    .line 571
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 572
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 573
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 574
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 575
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 576
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 577
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 578
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 579
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 583
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 588
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V

    return-object v0
.end method
