.class public Lcom/stericsson/hardware/fm/FmReceiverService;
.super Lcom/stericsson/hardware/fm/IFmReceiver$Stub;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mOnAutomaticSwitchReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnExtraCommandReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFmReset:Ljava/lang/Runnable;

.field private final mOnForcedPauseReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedResetReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRDSDataReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSignalStrengthReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStartedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStateChangedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStereoReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1332
    const-string v0, "fmradio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    .line 524
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmReceiverService$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnFmReset:Ljava/lang/Runnable;

    .line 553
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverService$2;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmReceiverService$2;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 582
    const-string v1, "FmReceiverService"

    const-string v2, "FmReceiverService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 591
    return-void
.end method

.method private native _fm_receiver_getFrequency()I
.end method

.method private native _fm_receiver_getSignalStrength()I
.end method

.method private native _fm_receiver_getState()I
.end method

.method private native _fm_receiver_getThreshold()I
.end method

.method private native _fm_receiver_isPlayingInStereo()Z
.end method

.method private native _fm_receiver_isRDSDataSupported()Z
.end method

.method private native _fm_receiver_isTunedToValidChannel()Z
.end method

.method private native _fm_receiver_pause()V
.end method

.method private native _fm_receiver_reset()I
.end method

.method private native _fm_receiver_resume()V
.end method

.method private native _fm_receiver_scanDown()V
.end method

.method private native _fm_receiver_scanUp()V
.end method

.method private native _fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_receiver_setAutomaticAFSwitching(Z)V
.end method

.method private native _fm_receiver_setAutomaticTASwitching(Z)V
.end method

.method private native _fm_receiver_setForceMono(Z)V
.end method

.method private native _fm_receiver_setFrequency(I)V
.end method

.method private native _fm_receiver_setRDS(Z)V
.end method

.method private native _fm_receiver_setThreshold(I)V
.end method

.method private native _fm_receiver_start(IIII)V
.end method

.method private native _fm_receiver_startAsync(IIII)V
.end method

.method private native _fm_receiver_startFullScan()V
.end method

.method private native _fm_receiver_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/stericsson/hardware/fm/FmReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->onHandlePlaneMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notifyOnAutomaticSwitching(II)V
    .locals 5
    .param p1, "newFrequency"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1320
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1321
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1322
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1323
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1325
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->callOnAutomaticSwitch(II)Z

    goto :goto_0

    .line 1327
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 1265
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1266
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1267
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1268
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 1270
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 1272
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1309
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1310
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1311
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1312
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1314
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 1316
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 1243
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1244
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1245
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1246
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 1248
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 1250
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 1254
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1255
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1256
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1257
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1259
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 1261
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    return-void
.end method

.method private notifyOnFullScan([I[IZ)V
    .locals 5
    .param p1, "frequency"    # [I
    .param p2, "signalLevel"    # [I
    .param p3, "aborted"    # Z

    .prologue
    .line 1232
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1233
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1234
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1235
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1237
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnFullScan([I[IZ)Z

    goto :goto_0

    .line 1239
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    return-void
.end method

.method private notifyOnPlayingInStereo(Z)V
    .locals 5
    .param p1, "inStereo"    # Z

    .prologue
    .line 1298
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1299
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1300
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1301
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1303
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->callOnPlayingInStereo(Z)Z

    goto :goto_0

    .line 1305
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    return-void
.end method

.method private notifyOnRDSDataFound(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "frequency"    # I

    .prologue
    .line 1276
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1277
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1278
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1279
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1281
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->callOnRDSDataFound(Landroid/os/Bundle;I)Z

    goto :goto_0

    .line 1283
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    return-void
.end method

.method private notifyOnScan(IIIZ)V
    .locals 5
    .param p1, "frequency"    # I
    .param p2, "signalLevel"    # I
    .param p3, "scanDirection"    # I
    .param p4, "aborted"    # Z

    .prologue
    .line 1221
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1222
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1223
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1224
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1226
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnScan(IIIZ)Z

    goto :goto_0

    .line 1228
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    return-void
.end method

.method private notifyOnSignalStrengthChanged(I)V
    .locals 5
    .param p1, "signalStrength"    # I

    .prologue
    .line 1287
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1288
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1289
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1290
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1292
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->callOnSignalStrengthChanged(I)Z

    goto :goto_0

    .line 1294
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    return-void
.end method

.method private notifyOnStarted()V
    .locals 6

    .prologue
    .line 1205
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1206
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1207
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1208
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 1210
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 1217
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1213
    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1214
    const-string v3, "FmReceiverService"

    const-string v5, "Started event with RDS receiver(s), switching on RDS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1217
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 1194
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1195
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1196
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1197
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 1199
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 1201
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    return-void
.end method

.method private onHandlePlaneMode()V
    .locals 6

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "delay_time":I
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 537
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 538
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "onReceive:onHandlePlaneMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerMediaOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerMediaOn(Z)V

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 544
    const/16 v0, 0x12c

    .line 545
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnFmReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 548
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnFmReset:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_2
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "onReceive:onHandlePlaneMode mHandler == null or mOnFmReset == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    .prologue
    .line 1159
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1161
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1164
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1165
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1166
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-nez v2, :cond_1

    .line 1167
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1168
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v3, "FmReceiverService"

    const-string v4, "addOnAutomaticSwitchListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :cond_1
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v1

    .line 1173
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnErrorListener;

    .prologue
    .line 869
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 874
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 875
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 876
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 877
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 878
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v3, "FmReceiverService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    .prologue
    .line 1124
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1126
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1129
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1130
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1131
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 1132
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1133
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string v3, "FmReceiverService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    .prologue
    .line 939
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 944
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 945
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 946
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 947
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 948
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_1
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    .prologue
    .line 974
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 976
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 979
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 980
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 981
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 982
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 983
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_1
    :goto_0
    return-void

    .line 987
    :catch_0
    move-exception v1

    .line 988
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStereoListener;

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1091
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1094
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1095
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1096
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-nez v2, :cond_1

    .line 1097
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 1098
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v3, "FmReceiverService"

    const-string v4, "addOnPlayingInStereoListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .prologue
    const/4 v5, 0x1

    .line 1009
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1014
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1015
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1016
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-nez v2, :cond_1

    .line 1017
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 1018
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v3, "FmReceiverService"

    const-string v4, "addOnRDSDataFoundListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1027
    const-string v3, "FmReceiverService"

    const-string v4, "First RDS receiver added, switching on RDS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1031
    :cond_1
    return-void

    .line 1022
    :catch_0
    move-exception v1

    .line 1023
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnScanListener;

    .prologue
    .line 904
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 909
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 911
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-nez v2, :cond_1

    .line 912
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 913
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v3, "FmReceiverService"

    const-string v4, "addOnScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_1
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    .prologue
    .line 1054
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1059
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1060
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1061
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-nez v2, :cond_1

    .line 1062
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 1063
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string v3, "FmReceiverService"

    const-string v4, "addOnSignalStrengthChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :cond_1
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStartedListener;

    .prologue
    .line 834
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 836
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 839
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 840
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 841
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 842
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 843
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v1

    .line 848
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    .prologue
    .line 799
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 804
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 805
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 806
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 807
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 808
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getFrequency()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getThreshold()I

    move-result v0

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isPlayingInStereo()Z

    move-result v0

    return v0
.end method

.method public isRDSDataSupported()Z
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isRDSDataSupported()Z

    move-result v0

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isTunedToValidChannel()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_pause()V

    .line 634
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1184
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1185
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1186
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-eqz v1, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnAutomaticSwitchListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1191
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnErrorListener;

    .prologue
    .line 889
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 894
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 895
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 896
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 897
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 901
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1149
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1150
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1151
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1156
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    .prologue
    .line 959
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 964
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 965
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 966
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 967
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 971
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    .prologue
    .line 994
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 999
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1000
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1001
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1006
    :cond_1
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStereoListener;

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1114
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1115
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1116
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-eqz v1, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnPlayingInStereoListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1121
    :cond_1
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .prologue
    const/4 v4, 0x0

    .line 1034
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1040
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1041
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-eqz v1, :cond_1

    .line 1042
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnRDSDataFoundListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1045
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    const-string v2, "FmReceiverService"

    const-string v3, "Last RDS receiver removed, switching off RDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-direct {p0, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1051
    :cond_1
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnScanListener;

    .prologue
    .line 924
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 930
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 931
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-eqz v1, :cond_1

    .line 932
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 936
    :cond_1
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1080
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1081
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-eqz v1, :cond_1

    .line 1082
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnSignalStrengthChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1086
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStartedListener;

    .prologue
    .line 854
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 860
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 861
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 862
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 866
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    .prologue
    .line 819
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 824
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 825
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 826
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 827
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 831
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    .line 625
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_resume()V

    .line 643
    return-void
.end method

.method public scanDown()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanDown()V

    .line 688
    return-void
.end method

.method public scanUp()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanUp()V

    .line 679
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 772
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticAFSwitching(Z)V

    .line 778
    return-void
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 781
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticTASwitching(Z)V

    .line 787
    return-void
.end method

.method public setForceMono(Z)V
    .locals 2
    .param p1, "forceMono"    # Z

    .prologue
    .line 763
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setForceMono(Z)V

    .line 769
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setFrequency(I)V

    .line 661
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setThreshold(I)V

    .line 733
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_start(IIII)V

    .line 602
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 603
    const-string v0, "FmReceiverService"

    const-string v1, "Started with RDS receiver(s), switching on RDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 606
    :cond_1
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startAsync(IIII)V

    .line 616
    return-void
.end method

.method public startFullScan()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startFullScan()V

    .line 697
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 706
    return-void
.end method
