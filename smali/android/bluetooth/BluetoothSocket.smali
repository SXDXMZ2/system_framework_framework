.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static PROXY_CONNECTION_TIMEOUT:I = 0x0

.field static final SEC_FLAG_AUTH:I = 0x2

.field static final SEC_FLAG_ENCRYPT:I = 0x1

.field private static SOCK_SIGNAL_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2

.field private static final VDBG:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private mFd:I

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketIS:Ljava/io/InputStream;

.field private mSocketOS:Ljava/io/OutputStream;

.field private volatile mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I

.field private final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x1388

    sput v0, Landroid/bluetooth/BluetoothSocket;->PROXY_CONNECTION_TIMEOUT:I

    .line 126
    const/16 v0, 0x10

    sput v0, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    return-void
.end method

.method constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p6, "port"    # I
    .param p7, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-ne p1, v1, :cond_1

    if-nez p7, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 156
    if-lt p6, v1, :cond_0

    const/16 v0, 0x1e

    if-le p6, v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFCOMM channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    if-eqz p7, :cond_2

    .line 161
    iput-object p7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 163
    :goto_0
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 164
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 165
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 166
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 168
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mFd:I

    .line 170
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 172
    if-nez p5, :cond_3

    .line 174
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 179
    :goto_1
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 180
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 181
    return-void

    .line 162
    :cond_2
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 224
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 184
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 185
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 186
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 187
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 188
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 189
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 190
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;
    .locals 5
    .param p1, "RemoteAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 194
    .local v0, "as":Landroid/bluetooth/BluetoothSocket;
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 195
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 197
    .local v1, "fds":[Ljava/io/FileDescriptor;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 198
    :cond_0
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "socket fd passed from stack failed, fds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 200
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket acept failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_1
    new-instance v2, Landroid/net/LocalSocket;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 203
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 204
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 205
    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 206
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 207
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v2, v0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 208
    return-object v0
.end method

.method private convertAddr([B)Ljava/lang/String;
    .locals 8
    .param p1, "addr"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 556
    const-string v0, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, p1, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    aget-byte v2, p1, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p1, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, p1, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    aget-byte v2, p1, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityFlags()I
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    if-eqz v1, :cond_0

    .line 238
    or-int/lit8 v0, v0, 0x2

    .line 239
    :cond_0
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    if-eqz v1, :cond_1

    .line 240
    or-int/lit8 v0, v0, 0x1

    .line 241
    :cond_1
    return v0
.end method

.method private readAll(Ljava/io/InputStream;[B)I
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    array-length v0, p2

    .line 581
    .local v0, "left":I
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 582
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 583
    .local v1, "ret":I
    if-gtz v1, :cond_1

    .line 584
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read failed, socket might closed or timeout, read ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_1
    sub-int/2addr v0, v1

    .line 586
    if-eqz v0, :cond_0

    .line 587
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readAll() looping, read partial size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expect size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v1    # "ret":I
    :cond_2
    array-length v2, p2

    return v2
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 595
    .local v1, "ibytes":[B
    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v2

    .line 597
    .local v2, "ret":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 598
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 599
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method private waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    sget v8, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    new-array v5, v8, [B

    .line 561
    .local v5, "sig":[B
    invoke-direct {p0, p1, v5}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v4

    .line 563
    .local v4, "ret":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 564
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 565
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 566
    .local v6, "size":I
    sget v8, Landroid/bluetooth/BluetoothSocket;->SOCK_SIGNAL_SIZE:I

    if-eq v6, v8, :cond_0

    .line 567
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure, wrong signal size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 568
    :cond_0
    const/4 v8, 0x6

    new-array v1, v8, [B

    .line 569
    .local v1, "addr":[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 571
    .local v3, "channel":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 572
    .local v7, "status":I
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->convertAddr([B)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "RemoteAddr":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 576
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure, status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 577
    :cond_1
    return-object v0
.end method


# virtual methods
.method accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket is not in listen state"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_0
    if-lez p1, :cond_1

    .line 402
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept() set timeout (ms):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 405
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "RemoteAddr":Ljava/lang/String;
    if-lez p1, :cond_2

    .line 407
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 408
    :cond_2
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v2, v3, :cond_3

    .line 411
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket is not in listen state"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 412
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 414
    .local v1, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->isDeviceAllowedByPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 418
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 419
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 422
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 423
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 424
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 426
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed: restricted by policy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_5
    return-object v1
.end method

.method available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method bindListen()I
    .locals 11

    .prologue
    const/16 v9, 0x4d

    const/4 v10, -0x1

    .line 352
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_0

    .line 395
    :goto_0
    return v9

    .line 353
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 354
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 355
    const-string v1, "BluetoothSocket"

    const-string v2, "bindListen fail, reason: bluetooth is off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 356
    goto :goto_0

    .line 359
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v1, v2, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindListen, fail to get port number, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 393
    goto :goto_0

    .line 361
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 362
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 363
    goto :goto_0

    .line 372
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_3

    monitor-exit p0

    move v9, v10

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 375
    .local v8, "fd":Ljava/io/FileDescriptor;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1, v8}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 377
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 378
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 379
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 382
    .local v6, "channel":I
    monitor-enter p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 383
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_4

    .line 384
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 385
    :cond_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 387
    :try_start_7
    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    if-ne v1, v10, :cond_5

    .line 388
    iput v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 390
    :cond_5
    const/4 v9, 0x0

    .local v9, "ret":I
    goto/16 :goto_0

    .line 385
    .end local v9    # "ret":I
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 529
    :cond_0
    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_1

    .line 532
    monitor-exit p0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_1
    :try_start_1
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 536
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 539
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 540
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 543
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 545
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Connect is called on null device"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :catch_0
    move-exception v7

    .line 342
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 311
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->isDeviceAllowedByPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed: restricted by policy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 317
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 320
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :try_start_2
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect(), SocketState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 324
    :cond_4
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket connect failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 326
    .local v8, "fd":Ljava/io/FileDescriptor;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1, v8}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 327
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 328
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 329
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 330
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 331
    .local v6, "channel":I
    if-gtz v6, :cond_6

    .line 332
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket connect failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_6
    iput v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 334
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 335
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 337
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_7

    .line 338
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 339
    :cond_7
    :try_start_8
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 340
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 501
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method getPort()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getSocketOpt(I[B)I
    .locals 6
    .param p1, "optionName"    # I
    .param p2, "optionVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "ret":I
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v4, v5, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 473
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 474
    const-string v4, "BluetoothSocket"

    const-string v5, "getSocketOpt fail, reason: bluetooth is off"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return v3

    .line 479
    :cond_1
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-interface {v0, v4, v5, p1, p2}, Landroid/bluetooth/IBluetooth;->getSocketOpt(III[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 484
    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothSocket"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 507
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 508
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt socket closed, read return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_0
    return v0
.end method

.method removeChannel()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setSocketOpt(I[BI)I
    .locals 9
    .param p1, "optionName"    # I
    .param p2, "optionVal"    # [B
    .param p3, "optionLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 443
    const/4 v7, 0x0

    .line 444
    .local v7, "ret":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 446
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 447
    const-string v1, "BluetoothSocket"

    const-string/jumbo v2, "setSocketOpt fail, reason: bluetooth is off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 457
    :goto_0
    return v1

    .line 452
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->setSocketOpt(III[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v1, v7

    .line 457
    goto :goto_0

    .line 453
    :catch_0
    move-exception v6

    .line 454
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 455
    goto :goto_0
.end method

.method write([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 519
    return p3
.end method
