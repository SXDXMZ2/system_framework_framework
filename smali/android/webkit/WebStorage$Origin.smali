.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 68
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 85
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 68
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 79
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 80
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "usage"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 68
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 72
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 74
    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 75
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
