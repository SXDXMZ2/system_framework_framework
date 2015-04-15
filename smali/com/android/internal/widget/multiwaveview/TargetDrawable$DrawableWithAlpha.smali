.class Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;
.super Landroid/graphics/drawable/Drawable;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/TargetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWithAlpha"
.end annotation


# instance fields
.field private mAlpha:F

.field private mRealDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "realDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 57
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    return-void
.end method
