.class Landroid/media/AudioService$RemotePlaybackState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;III)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "vol"    # I
    .param p4, "volMax"    # I

    .prologue
    .line 5158
    iput-object p1, p0, Landroid/media/AudioService$RemotePlaybackState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5159
    iput p2, p0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5160
    iput p3, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5161
    iput p4, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5162
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5163
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/media/AudioService$1;

    .prologue
    .line 5152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;III)V

    return-void
.end method
