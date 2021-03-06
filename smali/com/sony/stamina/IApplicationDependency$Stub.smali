.class public abstract Lcom/sony/stamina/IApplicationDependency$Stub;
.super Landroid/os/Binder;
.source "IApplicationDependency.java"

# interfaces
.implements Lcom/sony/stamina/IApplicationDependency;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/stamina/IApplicationDependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/stamina/IApplicationDependency$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sony.stamina.IApplicationDependency"

.field static final TRANSACTION_getDependency:I = 0x2

.field static final TRANSACTION_setObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.sony.stamina.IApplicationDependency"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sony/stamina/IApplicationDependency;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.sony.stamina.IApplicationDependency"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sony/stamina/IApplicationDependency;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/sony/stamina/IApplicationDependency;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/sony/stamina/IApplicationDependency$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sony/stamina/IApplicationDependency$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.sony.stamina.IApplicationDependency"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.sony.stamina.IApplicationDependency"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sony/stamina/IApplicationDependencyObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sony/stamina/IApplicationDependencyObserver;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/sony/stamina/IApplicationDependencyObserver;
    invoke-virtual {p0, v0}, Lcom/sony/stamina/IApplicationDependency$Stub;->setObserver(Lcom/sony/stamina/IApplicationDependencyObserver;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Lcom/sony/stamina/IApplicationDependencyObserver;
    :sswitch_2
    const-string v3, "com.sony.stamina.IApplicationDependency"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Lcom/sony/stamina/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/stamina/ProcessInfo;

    .line 65
    .local v0, "_arg0":Lcom/sony/stamina/ProcessInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sony/stamina/IApplicationDependency$Stub;->getDependency(Lcom/sony/stamina/ProcessInfo;)[Lcom/sony/stamina/ProcessInfo;

    move-result-object v1

    .line 66
    .local v1, "_result":[Lcom/sony/stamina/ProcessInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/sony/stamina/ProcessInfo;
    .end local v1    # "_result":[Lcom/sony/stamina/ProcessInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/sony/stamina/ProcessInfo;
    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
