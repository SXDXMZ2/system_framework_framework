.class public Landroid/net/CaptivePortalTracker;
.super Lcom/android/internal/util/StateMachine;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;,
        Landroid/net/CaptivePortalTracker$ProvisioningObserver;
    }
.end annotation


# static fields
.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

.field private static final DBG:Z = true

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final DELAYED_CHECK_INTERVAL_MS:I = 0x2710

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"


# instance fields
.field private mActiveNetworkState:Lcom/android/internal/util/State;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

.field private mDelayedCheckToken:I

.field private mDeviceProvisioned:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lcom/android/internal/util/State;

.field private mNotificationShown:Z

.field private mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    const-string v1, "CaptivePortalTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 67
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    .line 68
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 80
    iput v3, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 82
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 83
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    .line 84
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    .line 85
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    .line 88
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    .line 133
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 96
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    new-instance v1, Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$ProvisioningObserver;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_detection_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 111
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 112
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 114
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 115
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 116
    return-void

    :cond_1
    move v1, v3

    .line 108
    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/CaptivePortalTracker;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$2504(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$2600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/CaptivePortalTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 328
    :try_start_0
    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 329
    .local v0, "active":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 330
    const/4 v2, 0x1

    .line 335
    .end local v0    # "active":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 7
    .param p1, "server"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    .line 342
    const/4 v3, 0x0

    .line 343
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    iget-boolean v4, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v5

    .line 345
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/generate_204"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 348
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 350
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 351
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 352
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 353
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 354
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 356
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_3

    const/4 v4, 0x1

    .line 361
    :goto_1
    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v4, v5

    .line 356
    goto :goto_1

    .line 357
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probably not a portal: exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 361
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 362
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v4
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 370
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 375
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 376
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 378
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 371
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 372
    goto :goto_1

    .line 375
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 378
    goto :goto_1
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 152
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 153
    .local v0, "captivePortal":Landroid/net/CaptivePortalTracker;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 154
    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckComplete: ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckCompleted: captive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setNotificationVisible(Z)V
    .locals 13
    .param p1, "visible"    # Z

    .prologue
    .line 383
    if-nez p1, :cond_0

    iget-boolean v9, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    if-nez v9, :cond_0

    .line 384
    const-string/jumbo v9, "setNotivicationVisible: false and not shown, so noop"

    invoke-virtual {p0, v9}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 389
    .local v6, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 392
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 396
    const/4 v8, 0x0

    .line 397
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 424
    const v9, 0x104044c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "title":Ljava/lang/CharSequence;
    const v9, 0x104044d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "details":Ljava/lang/CharSequence;
    const v2, 0x10807e7

    .line 428
    .local v2, "icon":I
    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 432
    :cond_1
    :goto_1
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 433
    .local v4, "notification":Landroid/app/Notification;
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 434
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 435
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 436
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 437
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 440
    iput-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 441
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v7, v0, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 443
    const-string/jumbo v9, "setNotivicationVisible: make visible"

    invoke-virtual {p0, v9}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 444
    const-string v9, "CaptivePortal.Notification"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 449
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .end local v8    # "url":Ljava/lang/String;
    :goto_2
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    goto/16 :goto_0

    .line 399
    .restart local v8    # "url":Ljava/lang/String;
    :pswitch_0
    const v9, 0x104044b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 400
    .restart local v7    # "title":Ljava/lang/CharSequence;
    const v9, 0x104044d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "details":Ljava/lang/CharSequence;
    const v2, 0x10807eb

    .line 403
    .restart local v2    # "icon":I
    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 404
    goto :goto_1

    .line 406
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v7    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const v9, 0x104044c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 409
    .restart local v7    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0    # "details":Ljava/lang/CharSequence;
    const v2, 0x10807e7

    .line 412
    .restart local v2    # "icon":I
    :try_start_0
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v8

    .line 413
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 414
    iget-object v9, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 419
    :cond_2
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 420
    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 446
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "icon":I
    .end local v7    # "title":Ljava/lang/CharSequence;
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "setNotivicationVisible: cancel notification"

    invoke-virtual {p0, v9}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 447
    const-string v9, "CaptivePortal.Notification"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_2

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 159
    return-void
.end method
