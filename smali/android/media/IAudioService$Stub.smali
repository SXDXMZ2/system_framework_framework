.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x2b

.field static final TRANSACTION_adjustLocalOrRemoteStreamVolume:I = 0x3

.field static final TRANSACTION_adjustMasterVolume:I = 0x6

.field static final TRANSACTION_adjustStreamVolume:I = 0x5

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x4

.field static final TRANSACTION_adjustVolume:I = 0x2

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x2d

.field static final TRANSACTION_dispatchMediaKeyEventUnderWakelock:I = 0x2e

.field static final TRANSACTION_forceVolumeControlStream:I = 0x41

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x14

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x13

.field static final TRANSACTION_getMasterMaxVolume:I = 0x12

.field static final TRANSACTION_getMasterStreamType:I = 0x44

.field static final TRANSACTION_getMasterVolume:I = 0x10

.field static final TRANSACTION_getMode:I = 0x1b

.field static final TRANSACTION_getRemoteStreamMaxVolume:I = 0x3c

.field static final TRANSACTION_getRemoteStreamVolume:I = 0x3d

.field static final TRANSACTION_getRingerMode:I = 0x16

.field static final TRANSACTION_getRingtonePlayer:I = 0x43

.field static final TRANSACTION_getStreamMaxVolume:I = 0x11

.field static final TRANSACTION_getStreamVolume:I = 0xf

.field static final TRANSACTION_getVibrateSetting:I = 0x18

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x28

.field static final TRANSACTION_isBluetoothScoOn:I = 0x26

.field static final TRANSACTION_isCameraSoundForced:I = 0x48

.field static final TRANSACTION_isMasterMute:I = 0xe

.field static final TRANSACTION_isSpeakerMediaOn:I = 0x24

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x22

.field static final TRANSACTION_isStreamMute:I = 0xc

.field static final TRANSACTION_loadSoundEffects:I = 0x1e

.field static final TRANSACTION_playSoundEffect:I = 0x1c

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1d

.field static final TRANSACTION_registerMediaButtonEventReceiverForCalls:I = 0x31

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x2f

.field static final TRANSACTION_registerRemoteControlClient:I = 0x38

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x33

.field static final TRANSACTION_registerRemoteVolumeObserverForRcc:I = 0x3e

.field static final TRANSACTION_reloadAudioSettings:I = 0x20

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x35

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync:I = 0x36

.field static final TRANSACTION_requestAudioFocus:I = 0x2a

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x46

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x27

.field static final TRANSACTION_setBluetoothScoOn:I = 0x25

.field static final TRANSACTION_setMasterMute:I = 0xd

.field static final TRANSACTION_setMasterVolume:I = 0x9

.field static final TRANSACTION_setMode:I = 0x1a

.field static final TRANSACTION_setParameters:I = 0x49

.field static final TRANSACTION_setPlaybackInfoForRcc:I = 0x3a

.field static final TRANSACTION_setPlaybackStateForRcc:I = 0x3b

.field static final TRANSACTION_setRemoteControlClientPlaybackPosition:I = 0x37

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x8

.field static final TRANSACTION_setRemoteSubmixOn:I = 0x29

.field static final TRANSACTION_setRingerMode:I = 0x15

.field static final TRANSACTION_setRingtonePlayer:I = 0x42

.field static final TRANSACTION_setSpeakerMediaOn:I = 0x23

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x21

.field static final TRANSACTION_setStreamMute:I = 0xb

.field static final TRANSACTION_setStreamSolo:I = 0xa

.field static final TRANSACTION_setStreamVolume:I = 0x7

.field static final TRANSACTION_setVibrateSetting:I = 0x17

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x45

.field static final TRANSACTION_shouldVibrate:I = 0x19

.field static final TRANSACTION_startBluetoothSco:I = 0x3f

.field static final TRANSACTION_startWatchingRoutes:I = 0x47

.field static final TRANSACTION_stopBluetoothSco:I = 0x40

.field static final TRANSACTION_unloadSoundEffects:I = 0x1f

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x2c

.field static final TRANSACTION_unregisterMediaButtonEventReceiverForCalls:I = 0x32

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x30

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x39

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x34

.field static final TRANSACTION_verifyX509CertChain:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 831
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 56
    .local v5, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->verifyX509CertChain(I[BLjava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 60
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v3, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":[B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v3, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_3
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 82
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustLocalOrRemoteStreamVolume(II)V

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_4
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 93
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_5
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 113
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_6
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(II)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_7
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 128
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 130
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 137
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_8
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    .line 141
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4    # "_arg0":I
    :sswitch_9
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 150
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setMasterVolume(II)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 156
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    .line 162
    .local v5, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 163
    .local v6, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 160
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 169
    .end local v4    # "_arg0":I
    :sswitch_b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 175
    .restart local v5    # "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 176
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 182
    .end local v4    # "_arg0":I
    :sswitch_c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v18

    .line 186
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v18, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 187
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 192
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    .line 196
    .local v4, "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 199
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILandroid/os/IBinder;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 194
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 205
    :sswitch_e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v18

    .line 207
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v18, :cond_4

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 208
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 213
    .end local v18    # "_result":Z
    :sswitch_f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v18

    .line 217
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 223
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_10
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v18

    .line 225
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 231
    .end local v18    # "_result":I
    :sswitch_11
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v18

    .line 235
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 241
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_12
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v18

    .line 243
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 249
    .end local v18    # "_result":I
    :sswitch_13
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v18

    .line 253
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 259
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_14
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v18

    .line 261
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    .end local v18    # "_result":I
    :sswitch_15
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 276
    .end local v4    # "_arg0":I
    :sswitch_16
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v18

    .line 278
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v18    # "_result":I
    :sswitch_17
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 295
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_18
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 298
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v18

    .line 299
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 305
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_19
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v18

    .line 309
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v18, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 310
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 315
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_1a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 319
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 320
    .local v5, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 326
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_1b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v18

    .line 328
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 334
    .end local v18    # "_result":I
    :sswitch_1c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 337
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 338
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 342
    .end local v4    # "_arg0":I
    :sswitch_1d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 346
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 347
    .local v5, "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 352
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":F
    :sswitch_1e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v18

    .line 354
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v18, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 355
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 360
    .end local v18    # "_result":Z
    :sswitch_1f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 362
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 366
    :sswitch_20
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 368
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    :sswitch_21
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    .line 375
    .local v4, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 374
    .end local v4    # "_arg0":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 381
    :sswitch_22
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v18

    .line 383
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v18, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 384
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 389
    .end local v18    # "_result":Z
    :sswitch_23
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    .line 392
    .restart local v4    # "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setSpeakerMediaOn(Z)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 391
    .end local v4    # "_arg0":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 398
    :sswitch_24
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerMediaOn()Z

    move-result v18

    .line 400
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v18, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 406
    .end local v18    # "_result":Z
    :sswitch_25
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    .line 409
    .restart local v4    # "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 408
    .end local v4    # "_arg0":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 415
    :sswitch_26
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v18

    .line 417
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v18, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 418
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 423
    .end local v18    # "_result":Z
    :sswitch_27
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    .line 426
    .restart local v4    # "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 425
    .end local v4    # "_arg0":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 432
    :sswitch_28
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v18

    .line 434
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v18, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 435
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 440
    .end local v18    # "_result":Z
    :sswitch_29
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    .line 444
    .restart local v4    # "_arg0":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 445
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setRemoteSubmixOn(ZI)V

    .line 446
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 442
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 450
    :sswitch_2a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 454
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 456
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 458
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v7

    .line 460
    .local v7, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 462
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 463
    invoke-virtual/range {v3 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 464
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 470
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 474
    .local v4, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v18

    .line 476
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 482
    .end local v4    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 491
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 494
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 499
    .local v4, "_arg0":Landroid/view/KeyEvent;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 500
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 497
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_11

    .line 504
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_2e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 507
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 512
    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 510
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_12

    .line 518
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_2f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 521
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 527
    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 528
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 534
    .local v5, "_arg1":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 535
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 524
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_13

    .line 531
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/ComponentName;
    goto :goto_14

    .line 541
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_30
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 544
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 549
    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 550
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 547
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_15

    .line 554
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_31
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 557
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 562
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 563
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 560
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .line 567
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_32
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiverForCalls()V

    .line 569
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 573
    :sswitch_33
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 577
    .local v4, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 579
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 580
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 581
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 585
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_34
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 588
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 593
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_35
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 597
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 599
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 600
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 601
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 605
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_36
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 609
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v5, 0x1

    .line 610
    .local v5, "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 611
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 609
    .end local v5    # "_arg1":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .line 615
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_37
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 619
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 620
    .local v16, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/IAudioService$Stub;->setRemoteControlClientPlaybackPosition(IJ)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 626
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_38
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 629
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 635
    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 637
    .local v5, "_arg1":Landroid/media/IRemoteControlClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v18

    .line 639
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 632
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v18    # "_result":I
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_18

    .line 645
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_39
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 648
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 654
    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 655
    .restart local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    .line 656
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 651
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_19

    .line 660
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 664
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 666
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 667
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setPlaybackInfoForRcc(III)V

    .line 668
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 672
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_3b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 676
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 678
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 680
    .local v13, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .local v7, "_arg3":F
    move-object/from16 v10, p0

    move v11, v4

    move v12, v5

    move v15, v7

    .line 681
    invoke-virtual/range {v10 .. v15}, Landroid/media/IAudioService$Stub;->setPlaybackStateForRcc(IIJF)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 687
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":F
    .end local v13    # "_arg2":J
    :sswitch_3c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamMaxVolume()I

    move-result v18

    .line 689
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 695
    .end local v18    # "_result":I
    :sswitch_3d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamVolume()I

    move-result v18

    .line 697
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 703
    .end local v18    # "_result":I
    :sswitch_3e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 707
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteVolumeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeObserver;

    move-result-object v5

    .line 708
    .local v5, "_arg1":Landroid/media/IRemoteVolumeObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    .line 709
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 713
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/media/IRemoteVolumeObserver;
    :sswitch_3f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 717
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 718
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 724
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":I
    :sswitch_40
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 727
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 733
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :sswitch_41
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 737
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 738
    .local v5, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 744
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_42
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 747
    .local v4, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 753
    .end local v4    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_43
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v18

    .line 755
    .local v18, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v18, :cond_19

    invoke-interface/range {v18 .. v18}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 757
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 756
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 761
    .end local v18    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_44
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v18

    .line 763
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 769
    .end local v18    # "_result":I
    :sswitch_45
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 773
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 775
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 782
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_46
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 785
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 791
    .local v4, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 792
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v18

    .line 793
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 788
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "_arg1":I
    .end local v18    # "_result":I
    :cond_1a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 799
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_47
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v4

    .line 802
    .local v4, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v18

    .line 803
    .local v18, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v18, :cond_1b

    .line 805
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 811
    :goto_1c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 809
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 815
    .end local v4    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v18    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_48
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v18

    .line 817
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v18, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 818
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 823
    .end local v18    # "_result":Z
    :sswitch_49
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setParameters(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
