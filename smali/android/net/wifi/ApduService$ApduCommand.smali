.class Landroid/net/wifi/ApduService$ApduCommand;
.super Ljava/lang/Object;
.source "ApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApduCommand"
.end annotation


# instance fields
.field public mCla:I

.field public mCmd:I

.field public mData:Ljava/lang/String;

.field private mHasData:Z

.field public mLen:I

.field public mP1:I

.field public mP2:I

.field final synthetic this$0:Landroid/net/wifi/ApduService;


# direct methods
.method public constructor <init>(Landroid/net/wifi/ApduService;Ljava/io/InputStream;)V
    .locals 4
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iput-object p1, p0, Landroid/net/wifi/ApduService$ApduCommand;->this$0:Landroid/net/wifi/ApduService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const-string v1, "ApduService"

    const-string v2, "Waiting for client message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mHasData:Z

    .line 300
    :try_start_0
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mCla:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mCmd:I

    .line 313
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    .line 314
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mP2:I

    .line 315
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mLen:I

    .line 316
    invoke-direct {p0, p2}, Landroid/net/wifi/ApduService$ApduCommand;->readRemainingData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mData:Ljava/lang/String;

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mHasData:Z

    .line 320
    const-string v1, "ApduService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client message parsed. ApduCommand:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/ApduService$ApduCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Socket timed out, no more data to read"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 325
    new-array v3, v4, [B

    .line 327
    .local v3, "rawData":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    if-eq v0, v4, :cond_0

    .line 328
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Two bytes expected when reading from input stream, found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 340
    .local v2, "intValue":I
    return v2

    .line 335
    .end local v2    # "intValue":I
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to convert data to integer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readRemainingData(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    .line 344
    new-array v2, v5, [B

    .line 345
    .local v2, "rawData":[B
    const/4 v0, 0x0

    .line 346
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "value":I
    move v1, v0

    .line 347
    .end local v0    # "pos":I
    .local v1, "pos":I
    :goto_0
    if-eqz v3, :cond_2

    .line 348
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 349
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected end of stream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :cond_0
    if-lt v1, v5, :cond_1

    .line 352
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Length of data too long: > 256 characters"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 354
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    int-to-byte v4, v3

    aput-byte v4, v2, v1

    .line 355
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    move v1, v0

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .line 357
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v4
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/net/wifi/ApduService$ApduCommand;->mHasData:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cla: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mCla:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\np1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\np2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mP2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduCommand;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
