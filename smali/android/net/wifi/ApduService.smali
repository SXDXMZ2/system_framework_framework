.class final Landroid/net/wifi/ApduService;
.super Ljava/lang/Object;
.source "ApduService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ApduService$1;,
        Landroid/net/wifi/ApduService$ApduCommand;,
        Landroid/net/wifi/ApduService$ApduServiceRunner;
    }
.end annotation


# static fields
.field private static final EAP_SIM_DS_ENABLED:Z

.field private static final LOCAL_LOGD:Z = true

.field private static final SIM_SLOT_1:I = 0x1

.field private static final SIM_SLOT_2:I = 0x2

.field private static final SOCKET_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ApduService"

.field private static final WPA_SUPPLICANT_PROCESS_NAME:Ljava/lang/String; = "/system/bin/wpa_supplicant"


# instance fields
.field private mConnectionSocket:Landroid/net/LocalSocket;

.field private volatile mForceClose:Z

.field private final mLock:Ljava/lang/Object;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSIM_slot:I

.field private mServerSocket:Landroid/net/LocalServerSocket;

.field private mSocketName:Ljava/lang/String;

.field private volatile mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "ro.wifi.eap_sim_ds_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/ApduService;->EAP_SIM_DS_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 60
    iput-boolean v1, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    .line 61
    new-instance v0, Landroid/net/wifi/ApduService$ApduServiceRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/ApduService$ApduServiceRunner;-><init>(Landroid/net/wifi/ApduService;Landroid/net/wifi/ApduService$1;)V

    iput-object v0, p0, Landroid/net/wifi/ApduService;->mRunnable:Ljava/lang/Runnable;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/ApduService;->mSIM_slot:I

    .line 64
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/ApduService;)Landroid/net/LocalServerSocket;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/ApduService;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/ApduService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/ApduService;
    .param p1, "x1"    # Landroid/net/LocalServerSocket;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/ApduService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/ApduService;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/ApduService;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/ApduService;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->runService()V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/ApduService;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/ApduService;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/ApduService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/ApduService;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    return p1
.end method

.method private communicateWithClient()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 229
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 230
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 231
    .local v8, "in":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 232
    .local v9, "out":Ljava/io/OutputStream;
    new-instance v7, Landroid/net/wifi/ApduService$ApduCommand;

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/ApduService$ApduCommand;-><init>(Landroid/net/wifi/ApduService;Ljava/io/InputStream;)V

    .line 236
    .local v7, "apduCommand":Landroid/net/wifi/ApduService$ApduCommand;
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 237
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_1

    .line 238
    const-string v1, "ApduService"

    const-string v2, "Error retrieving ITelephony interface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    return-void

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/net/wifi/ApduService$ApduCommand;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mCmd:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_4

    iget-object v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mData:Ljava/lang/String;

    const-string v2, "5345545f53494d5f434152445f534c4f540000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 246
    const-string v1, "ApduService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set communicate SIM card val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    if-ge v1, v12, :cond_3

    .line 250
    :cond_2
    iput v12, p0, Landroid/net/wifi/ApduService;->mSIM_slot:I

    .line 254
    :goto_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "9000"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/OutputStream;->write([B)V

    .line 255
    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write(I)V

    .line 275
    :goto_2
    new-instance v7, Landroid/net/wifi/ApduService$ApduCommand;

    .end local v7    # "apduCommand":Landroid/net/wifi/ApduService$ApduCommand;
    invoke-direct {v7, p0, v8}, Landroid/net/wifi/ApduService$ApduCommand;-><init>(Landroid/net/wifi/ApduService;Ljava/io/InputStream;)V

    .restart local v7    # "apduCommand":Landroid/net/wifi/ApduService$ApduCommand;
    goto :goto_0

    .line 252
    :cond_3
    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    iput v1, p0, Landroid/net/wifi/ApduService;->mSIM_slot:I

    goto :goto_1

    .line 261
    :cond_4
    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mCla:I

    iget v2, v7, Landroid/net/wifi/ApduService$ApduCommand;->mCmd:I

    iget v3, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    iget v4, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP2:I

    iget v5, v7, Landroid/net/wifi/ApduService$ApduCommand;->mLen:I

    iget-object v6, v7, Landroid/net/wifi/ApduService$ApduCommand;->mData:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "response":Ljava/lang/String;
    const-string v1, "ApduService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ApduService;->mSIM_slot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APDU response from Telephony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v1, "ApduService"

    const-string v2, "Writing data to output stream (response + zero terminator)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2
.end method

.method private isPidAllowed(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 175
    const-string v10, "ApduService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Verifying PID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 182
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/bin/ps -p "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 185
    .local v7, "result":I
    if-eqz v7, :cond_1

    .line 186
    const-string v10, "ApduService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not execute command: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 220
    :try_start_1
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 222
    .end local v0    # "command":Ljava/lang/String;
    .end local v7    # "result":I
    :cond_0
    :goto_0
    return v9

    .line 189
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v7    # "result":I
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x200

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 193
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 195
    const-string v10, "ApduService"

    const-string v11, "Could not read process info"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    if-eqz v6, :cond_2

    .line 220
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_1
    move-object v5, v6

    .line 222
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 200
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_5
    const-string v10, "\\s"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "tokens":[Ljava/lang/String;
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v4, v8, v10

    .line 203
    .local v4, "processName":Ljava/lang/String;
    const-string v10, "/system/bin/wpa_supplicant"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 205
    const-string v10, "ApduService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process name verification succeeded: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    const/4 v9, 0x1

    .line 218
    if-eqz v6, :cond_4

    .line 220
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_2
    move-object v5, v6

    .line 222
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 218
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v6, :cond_6

    .line 220
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_6
    :goto_3
    move-object v5, v6

    .line 222
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 211
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v7    # "result":I
    .end local v8    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v10, "ApduService"

    const-string v11, "Failed to perform security check"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 220
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v10

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_5
    :try_start_a
    const-string v10, "ApduService"

    const-string v11, "Failed to perform security check"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 220
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_0

    .line 221
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v5, :cond_7

    .line 220
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 222
    :cond_7
    :goto_7
    throw v9

    .line 221
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v7    # "result":I
    :catch_4
    move-exception v10

    goto/16 :goto_0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    goto :goto_1

    .restart local v4    # "processName":Ljava/lang/String;
    .restart local v8    # "tokens":[Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_2

    :catch_7
    move-exception v10

    goto :goto_3

    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "result":I
    .end local v8    # "tokens":[Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v10

    goto :goto_7

    .line 218
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "result":I
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 214
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 211
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private runService()V
    .locals 3

    .prologue
    .line 106
    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    if-nez v1, :cond_1

    .line 107
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->waitForConnection()V

    .line 109
    iget-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    if-nez v1, :cond_0

    .line 114
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->communicateWithClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_0
    :goto_1
    const-string v1, "ApduService"

    const-string v2, "Closing connection socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Error communicating with client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApduService"

    const-string v2, "Error communicating with client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Error closing connection socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v1, "ApduService"

    const-string v2, "Connection loop has exit. Stopping APDU service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private waitForConnection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 139
    const-string v2, "ApduService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for connection. Socket name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_1

    .line 150
    const-string v2, "ApduService"

    const-string v3, "Server socket missing. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v5, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Error calling accept on server socket. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-boolean v5, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const-string v2, "ApduService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDU connection socket created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 168
    .local v0, "credentials":Landroid/net/Credentials;
    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/wifi/ApduService;->isPidAllowed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iput-boolean v5, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0

    .line 162
    .end local v0    # "credentials":Landroid/net/Credentials;
    :catch_1
    move-exception v1

    .line 163
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Could not get peer credentials from socket. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-boolean v5, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "ApduService"

    const-string v2, "Could not start APDU Service, already started"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v1

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    const-string v0, "ApduService"

    const-string v1, "Starting APDU service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/net/wifi/ApduService;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 5

    .prologue
    .line 391
    iget-object v3, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-boolean v2, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    if-nez v2, :cond_0

    .line 393
    const-string v2, "ApduService"

    const-string v4, "Could not stop APDU service, not started"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    monitor-exit v3

    .line 417
    :goto_0
    return-void

    .line 396
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    const-string v2, "ApduService"

    const-string v3, "Stopping APDU service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 403
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 407
    .local v1, "tempSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Unable to close temporary local socket"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "tempSocket":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 408
    .restart local v1    # "tempSocket":Landroid/net/LocalSocket;
    :catch_1
    move-exception v0

    .line 409
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Cannot stop service (server socket connect failed)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
