.class final Landroid/webkit/CertTool;
.super Ljava/lang/Object;
.source "CertTool.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CertTool"

.field private static final MD5_WITH_RSA:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static sCertificateTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Landroid/webkit/CertTool;->MD5_WITH_RSA:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/CertTool;->sCertificateTypeMap:Ljava/util/HashMap;

    .line 43
    sget-object v0, Landroid/webkit/CertTool;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Landroid/webkit/CertTool;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Landroid/webkit/CertTool;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 72
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/security/Credentials;->install(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 73
    return-void
.end method

.method static getCertType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Landroid/webkit/CertTool;->sCertificateTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static getKeyStrengthList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "High Grade"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Medium Grade"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "challenge"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 55
    .local v1, "generator":Ljava/security/KeyPairGenerator;
    if-nez p1, :cond_0

    const/16 v5, 0x800

    :goto_0
    invoke-virtual {v1, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 56
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 58
    .local v2, "pair":Ljava/security/KeyPair;
    new-instance v3, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;

    sget-object v5, Landroid/webkit/CertTool;->MD5_WITH_RSA:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v3, p2, v5, v6}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    .line 60
    .local v3, "request":Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;)V

    .line 61
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    .line 63
    .local v4, "signed":[B
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Landroid/security/Credentials;->install(Landroid/content/Context;Ljava/security/KeyPair;)V

    .line 64
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "generator":Ljava/security/KeyPairGenerator;
    .end local v2    # "pair":Ljava/security/KeyPair;
    .end local v3    # "request":Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    .end local v4    # "signed":[B
    :goto_1
    return-object v5

    .line 55
    .restart local v1    # "generator":Ljava/security/KeyPairGenerator;
    :cond_0
    const/16 v5, 0x400

    goto :goto_0

    .line 65
    .end local v1    # "generator":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CertTool"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v5, 0x0

    goto :goto_1
.end method
