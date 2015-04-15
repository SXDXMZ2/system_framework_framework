.class Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceTransition"
.end annotation


# instance fields
.field private mGeofenceId:I

.field private mLocation:Landroid/location/Location;

.field private mTimestamp:J

.field private mTransition:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;)V
    .locals 0
    .param p2, "geofenceId"    # I
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "location"    # Landroid/location/Location;

    .prologue
    .line 670
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    .line 672
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    .line 673
    iput-wide p4, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    .line 674
    iput-object p6, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    .line 675
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .prologue
    .line 665
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .prologue
    .line 665
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .prologue
    .line 665
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .prologue
    .line 665
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    return-wide v0
.end method
