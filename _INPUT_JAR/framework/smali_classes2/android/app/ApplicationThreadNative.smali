.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    .line 68
    :cond_3
    :goto_3
    return-object v0

    .line 62
    :cond_4
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 64
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_3

    .line 68
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 742
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 124
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
    .line 78
    sparse-switch p1, :sswitch_data_93a

    .line 737
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 81
    :sswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 83
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/4 v7, 0x1

    .line 84
    .local v7, "finished":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    const/4 v8, 0x1

    .line 85
    .local v8, "userLeaving":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 86
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_2c
    move-object/from16 v5, p0

    .line 87
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 88
    const/4 v5, 0x1

    goto :goto_7

    .line 83
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_33
    const/4 v7, 0x0

    goto :goto_1a

    .line 84
    .restart local v7    # "finished":Z
    :cond_35
    const/4 v8, 0x0

    goto :goto_21

    .line 86
    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_37
    const/4 v10, 0x0

    goto :goto_2c

    .line 93
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :sswitch_39
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 95
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    const/16 v114, 0x1

    .line 96
    .local v114, "show":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 97
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 98
    const/4 v5, 0x1

    goto :goto_7

    .line 95
    .end local v9    # "configChanges":I
    .end local v114    # "show":Z
    :cond_59
    const/16 v114, 0x0

    goto :goto_4c

    .line 103
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_5c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 105
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_78

    const/16 v114, 0x1

    .line 106
    .restart local v114    # "show":Z
    :goto_6f
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 107
    const/4 v5, 0x1

    goto :goto_7

    .line 105
    .end local v114    # "show":Z
    :cond_78
    const/16 v114, 0x0

    goto :goto_6f

    .line 112
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_7b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 114
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_98

    const/16 v115, 0x1

    .line 115
    .local v115, "sleeping":Z
    :goto_8e
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 116
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 114
    .end local v115    # "sleeping":Z
    :cond_98
    const/16 v115, 0x0

    goto :goto_8e

    .line 121
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_9b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 123
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 124
    .local v19, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c4

    const/16 v25, 0x1

    .line 125
    .local v25, "isForward":Z
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v111

    .line 126
    .local v111, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    move-object/from16 v3, v111

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 127
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 124
    .end local v25    # "isForward":Z
    .end local v111    # "resumeArgs":Landroid/os/Bundle;
    :cond_c4
    const/16 v25, 0x0

    goto :goto_b2

    .line 132
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v19    # "procState":I
    :sswitch_c7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 134
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 135
    .local v22, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 136
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 141
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_e4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 143
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 144
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 145
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 146
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 147
    .local v16, "curConfig":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 148
    .local v17, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v18

    .line 150
    .local v18, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 151
    .restart local v19    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v20

    .line 152
    .local v20, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v21

    .line 153
    .local v21, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 154
    .restart local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 155
    .local v23, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_176

    const/16 v24, 0x1

    .line 156
    .local v24, "notResumed":Z
    :goto_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_179

    const/16 v25, 0x1

    .line 157
    .restart local v25    # "isForward":Z
    :goto_14f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17c

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .line 160
    .local v26, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_161
    const/16 v27, 0x0

    .line 162
    .local v27, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v11, p0

    move-object v13, v6

    .line 165
    invoke-virtual/range {v11 .. v27}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 167
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 155
    .end local v24    # "notResumed":Z
    .end local v25    # "isForward":Z
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_176
    const/16 v24, 0x0

    goto :goto_147

    .line 156
    .restart local v24    # "notResumed":Z
    :cond_179
    const/16 v25, 0x0

    goto :goto_14f

    .line 157
    .restart local v25    # "isForward":Z
    :cond_17c
    const/16 v26, 0x0

    goto :goto_161

    .line 172
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v18    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v19    # "procState":I
    .end local v20    # "state":Landroid/os/Bundle;
    .end local v21    # "persistentState":Landroid/os/PersistableBundle;
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24    # "notResumed":Z
    .end local v25    # "isForward":Z
    :sswitch_17f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 174
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 175
    .restart local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 176
    .restart local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 177
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d8

    const/16 v24, 0x1

    .line 178
    .restart local v24    # "notResumed":Z
    :goto_1a6
    const/16 v34, 0x0

    .line 179
    .local v34, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b8

    .line 180
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "config":Landroid/content/res/Configuration;
    check-cast v34, Landroid/content/res/Configuration;

    .line 183
    .restart local v34    # "config":Landroid/content/res/Configuration;
    :cond_1b8
    const/16 v27, 0x0

    .line 185
    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v22

    move-object/from16 v31, v23

    move/from16 v32, v9

    move/from16 v33, v24

    move-object/from16 v35, v27

    .line 188
    invoke-virtual/range {v28 .. v35}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 177
    .end local v24    # "notResumed":Z
    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v34    # "config":Landroid/content/res/Configuration;
    :cond_1d8
    const/16 v24, 0x0

    goto :goto_1a6

    .line 195
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :sswitch_1db
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 197
    .restart local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 198
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 199
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 204
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :sswitch_1f8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 206
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_219

    const/16 v93, 0x1

    .line 207
    .local v93, "finishing":Z
    :goto_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 208
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 209
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 206
    .end local v9    # "configChanges":I
    .end local v93    # "finishing":Z
    :cond_219
    const/16 v93, 0x0

    goto :goto_20b

    .line 215
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_21c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 217
    .local v103, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 218
    .local v96, "isDisable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updateOverlayPath(Ljava/lang/String;I)V

    .line 219
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 225
    .end local v96    # "isDisable":I
    .end local v103    # "path":Ljava/lang/String;
    :sswitch_237
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 227
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 228
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 229
    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 230
    .local v39, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 231
    .local v40, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v41

    .line 232
    .local v41, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_286

    const/16 v42, 0x1

    .line 233
    .local v42, "sync":Z
    :goto_270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 234
    .local v43, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, "processState":I
    move-object/from16 v35, p0

    move-object/from16 v36, v12

    move-object/from16 v37, v15

    move-object/from16 v38, v17

    .line 235
    invoke-virtual/range {v35 .. v44}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 237
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 232
    .end local v42    # "sync":Z
    .end local v43    # "sendingUser":I
    .end local v44    # "processState":I
    :cond_286
    const/16 v42, 0x0

    goto :goto_270

    .line 241
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v39    # "resultCode":I
    .end local v40    # "resultData":Ljava/lang/String;
    .end local v41    # "resultExtras":Landroid/os/Bundle;
    :sswitch_289
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 243
    .local v29, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 244
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 245
    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 246
    .restart local v44    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move/from16 v3, v44

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 247
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 251
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v29    # "token":Landroid/os/IBinder;
    .end local v44    # "processState":I
    :sswitch_2ba
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 253
    .restart local v29    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 254
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e9

    const/16 v108, 0x1

    .line 255
    .local v108, "rebind":Z
    :goto_2d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 256
    .restart local v44    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v108

    move/from16 v3, v44

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 257
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 254
    .end local v44    # "processState":I
    .end local v108    # "rebind":Z
    :cond_2e9
    const/16 v108, 0x0

    goto :goto_2d7

    .line 261
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_2ec
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 263
    .restart local v29    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 264
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 265
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 270
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_30b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 272
    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33e

    const/16 v30, 0x1

    .line 273
    .local v30, "taskRemoved":Z
    :goto_31e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 274
    .local v31, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 276
    .local v32, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_341

    .line 277
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Intent;

    .local v33, "args":Landroid/content/Intent;
    :goto_336
    move-object/from16 v28, p0

    .line 281
    invoke-virtual/range {v28 .. v33}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 282
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 272
    .end local v30    # "taskRemoved":Z
    .end local v31    # "startId":I
    .end local v32    # "fl":I
    .end local v33    # "args":Landroid/content/Intent;
    :cond_33e
    const/16 v30, 0x0

    goto :goto_31e

    .line 279
    .restart local v30    # "taskRemoved":Z
    .restart local v31    # "startId":I
    .restart local v32    # "fl":I
    :cond_341
    const/16 v33, 0x0

    .restart local v33    # "args":Landroid/content/Intent;
    goto :goto_336

    .line 287
    .end local v29    # "token":Landroid/os/IBinder;
    .end local v30    # "taskRemoved":Z
    .end local v31    # "startId":I
    .end local v32    # "fl":I
    .end local v33    # "args":Landroid/content/Intent;
    :sswitch_344
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 289
    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 290
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 295
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_359
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 297
    .local v46, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 299
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v48

    .line 301
    .local v48, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f6

    new-instance v49, Landroid/content/ComponentName;

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 303
    .local v49, "testName":Landroid/content/ComponentName;
    :goto_385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f9

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .line 305
    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v51

    .line 306
    .local v51, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 307
    .local v88, "binder":Landroid/os/IBinder;
    invoke-static/range {v88 .. v88}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v52

    .line 308
    .local v52, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 309
    invoke-static/range {v88 .. v88}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v53

    .line 311
    .local v53, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .line 312
    .local v54, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3fc

    const/16 v55, 0x1

    .line 313
    .local v55, "openGlTrace":Z
    :goto_3b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3ff

    const/16 v56, 0x1

    .line 314
    .local v56, "restrictedBackupMode":Z
    :goto_3bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_402

    const/16 v57, 0x1

    .line 315
    .local v57, "persistent":Z
    :goto_3c7
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/res/Configuration;

    .line 316
    .restart local v34    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 317
    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v60

    .line 318
    .local v60, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .local v61, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v45, p0

    move-object/from16 v47, v15

    move-object/from16 v50, v26

    move-object/from16 v58, v34

    move-object/from16 v59, v17

    .line 319
    invoke-virtual/range {v45 .. v61}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 301
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v34    # "config":Landroid/content/res/Configuration;
    .end local v49    # "testName":Landroid/content/ComponentName;
    .end local v51    # "testArgs":Landroid/os/Bundle;
    .end local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v54    # "testMode":I
    .end local v55    # "openGlTrace":Z
    .end local v56    # "restrictedBackupMode":Z
    .end local v57    # "persistent":Z
    .end local v60    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v61    # "coreSettings":Landroid/os/Bundle;
    .end local v88    # "binder":Landroid/os/IBinder;
    :cond_3f6
    const/16 v49, 0x0

    goto :goto_385

    .line 303
    .restart local v49    # "testName":Landroid/content/ComponentName;
    :cond_3f9
    const/16 v26, 0x0

    goto :goto_397

    .line 312
    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v51    # "testArgs":Landroid/os/Bundle;
    .restart local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v54    # "testMode":I
    .restart local v88    # "binder":Landroid/os/IBinder;
    :cond_3fc
    const/16 v55, 0x0

    goto :goto_3b7

    .line 313
    .restart local v55    # "openGlTrace":Z
    :cond_3ff
    const/16 v56, 0x0

    goto :goto_3bf

    .line 314
    .restart local v56    # "restrictedBackupMode":Z
    :cond_402
    const/16 v57, 0x0

    goto :goto_3c7

    .line 327
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v46    # "packageName":Ljava/lang/String;
    .end local v48    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v49    # "testName":Landroid/content/ComponentName;
    .end local v51    # "testArgs":Landroid/os/Bundle;
    .end local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v54    # "testMode":I
    .end local v55    # "openGlTrace":Z
    .end local v56    # "restrictedBackupMode":Z
    .end local v88    # "binder":Landroid/os/IBinder;
    :sswitch_405
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 329
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 334
    :sswitch_412
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 336
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 341
    :sswitch_41f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/res/Configuration;

    .line 343
    .restart local v34    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 344
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 348
    .end local v34    # "config":Landroid/content/res/Configuration;
    :sswitch_43a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 350
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 354
    :sswitch_447
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 360
    :sswitch_454
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .line 362
    .local v63, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    .line 363
    .local v64, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 364
    .local v67, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/net/Uri;

    .line 365
    .local v68, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    move-object/from16 v3, v67

    move-object/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 371
    .end local v63    # "proxy":Ljava/lang/String;
    .end local v64    # "port":Ljava/lang/String;
    .end local v67    # "exclList":Ljava/lang/String;
    .end local v68    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_481
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .line 373
    .restart local v63    # "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    .line 374
    .restart local v64    # "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 375
    .local v65, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v66

    .line 376
    .local v66, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 377
    .restart local v67    # "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/net/Uri;

    .restart local v68    # "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v62, p0

    .line 378
    invoke-virtual/range {v62 .. v68}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 384
    .end local v63    # "proxy":Ljava/lang/String;
    .end local v64    # "port":Ljava/lang/String;
    .end local v65    # "username":Ljava/lang/String;
    .end local v66    # "password":Ljava/lang/String;
    .end local v67    # "exclList":Ljava/lang/String;
    .end local v68    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_4ae
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 386
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 390
    :sswitch_4bb
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 392
    .local v92, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .line 393
    .local v112, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 394
    .local v33, "args":[Ljava/lang/String;
    if-eqz v92, :cond_4e0

    .line 395
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 397
    :try_start_4dd
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e0
    .catch Ljava/io/IOException; {:try_start_4dd .. :try_end_4e0} :catch_91f

    .line 401
    :cond_4e0
    :goto_4e0
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 405
    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :sswitch_4e3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 407
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .line 408
    .restart local v112    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 409
    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_508

    .line 410
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 412
    :try_start_505
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_508
    .catch Ljava/io/IOException; {:try_start_505 .. :try_end_508} :catch_922

    .line 416
    :cond_508
    :goto_508
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 420
    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :sswitch_50b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v70

    .line 423
    .local v70, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 424
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 425
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 426
    .local v73, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v74

    .line 427
    .local v74, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_558

    const/16 v75, 0x1

    .line 428
    .local v75, "ordered":Z
    :goto_538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55b

    const/16 v76, 0x1

    .line 429
    .local v76, "sticky":Z
    :goto_540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 430
    .restart local v43    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .restart local v44    # "processState":I
    move-object/from16 v69, p0

    move-object/from16 v71, v12

    move/from16 v72, v39

    move/from16 v77, v43

    move/from16 v78, v44

    .line 431
    invoke-virtual/range {v69 .. v78}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 433
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 427
    .end local v43    # "sendingUser":I
    .end local v44    # "processState":I
    .end local v75    # "ordered":Z
    .end local v76    # "sticky":Z
    :cond_558
    const/16 v75, 0x0

    goto :goto_538

    .line 428
    .restart local v75    # "ordered":Z
    :cond_55b
    const/16 v76, 0x0

    goto :goto_540

    .line 438
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v39    # "resultCode":I
    .end local v70    # "receiver":Landroid/content/IIntentReceiver;
    .end local v73    # "dataStr":Ljava/lang/String;
    .end local v74    # "extras":Landroid/os/Bundle;
    .end local v75    # "ordered":Z
    :sswitch_55e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 440
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 445
    :sswitch_56b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 447
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 448
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 453
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_57e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 455
    .local v85, "activityToken":Landroid/os/IBinder;
    new-instance v117, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v117

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Landroid/os/Parcel;)V

    .line 456
    .local v117, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 457
    .local v100, "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v117

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 465
    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v100    # "notifyReason":I
    .end local v117    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_5a7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5da

    const/16 v116, 0x1

    .line 467
    .local v116, "start":Z
    :goto_5b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 468
    .local v106, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5dd

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .line 470
    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5cc
    move-object/from16 v0, p0

    move/from16 v1, v116

    move-object/from16 v2, v26

    move/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 466
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v106    # "profileType":I
    .end local v116    # "start":Z
    :cond_5da
    const/16 v116, 0x0

    goto :goto_5b6

    .line 468
    .restart local v106    # "profileType":I
    .restart local v116    # "start":Z
    :cond_5dd
    const/16 v26, 0x0

    goto :goto_5cc

    .line 476
    .end local v106    # "profileType":I
    .end local v116    # "start":Z
    :sswitch_5e0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 478
    .local v94, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 479
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 484
    .end local v94    # "group":I
    :sswitch_5f5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .line 486
    .local v86, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 487
    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 488
    .local v87, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v17

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 494
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v87    # "backupMode":I
    :sswitch_622
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .line 496
    .restart local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .line 497
    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 498
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 503
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_649
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 505
    .local v89, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v102

    .line 506
    .local v102, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v89

    move-object/from16 v2, v102

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 507
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 512
    .end local v89    # "cmd":I
    .end local v102    # "packages":[Ljava/lang/String;
    :sswitch_664
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v99

    .line 514
    .local v99, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 515
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 520
    .end local v99    # "msg":Ljava/lang/String;
    :sswitch_679
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6ac

    const/16 v98, 0x1

    .line 522
    .local v98, "managed":Z
    :goto_688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 523
    .restart local v103    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6af

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v92, v5

    .line 525
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_69e
    move-object/from16 v0, p0

    move/from16 v1, v98

    move-object/from16 v2, v103

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 526
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 521
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v98    # "managed":Z
    .end local v103    # "path":Ljava/lang/String;
    :cond_6ac
    const/16 v98, 0x0

    goto :goto_688

    .line 523
    .restart local v98    # "managed":Z
    .restart local v103    # "path":Ljava/lang/String;
    :cond_6af
    const/16 v92, 0x0

    goto :goto_69e

    .line 530
    .end local v98    # "managed":Z
    .end local v103    # "path":Ljava/lang/String;
    :sswitch_6b2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 532
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 533
    .local v84, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 534
    .local v105, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 535
    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_6dd

    .line 536
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v105

    move-object/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 538
    :try_start_6da
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6dd
    .catch Ljava/io/IOException; {:try_start_6da .. :try_end_6dd} :catch_925

    .line 542
    :cond_6dd
    :goto_6dd
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 546
    .end local v33    # "args":[Ljava/lang/String;
    .end local v84    # "activity":Landroid/os/IBinder;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v105    # "prefix":Ljava/lang/String;
    :sswitch_6e0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v113

    .line 548
    .local v113, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 549
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 553
    .end local v113    # "settings":Landroid/os/Bundle;
    :sswitch_6f5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 555
    .local v104, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/res/CompatibilityInfo;

    .line 556
    .local v90, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 557
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 561
    .end local v90    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v104    # "pkg":Ljava/lang/String;
    :sswitch_716
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 563
    .local v97, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 564
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 569
    .end local v97    # "level":I
    :sswitch_72b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 571
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/Debug$MemoryInfo;

    .line 572
    .local v79, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_772

    const/16 v80, 0x1

    .line 573
    .local v80, "checkin":Z
    :goto_748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_775

    const/16 v81, 0x1

    .line 574
    .local v81, "dumpInfo":Z
    :goto_750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_778

    const/16 v82, 0x1

    .line 575
    .local v82, "dumpDalvik":Z
    :goto_758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 576
    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_76c

    .line 578
    :try_start_75e
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v78

    move-object/from16 v77, p0

    move-object/from16 v83, v33

    invoke-virtual/range {v77 .. v83}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    :try_end_769
    .catchall {:try_start_75e .. :try_end_769} :catchall_77b

    .line 581
    :try_start_769
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_76c
    .catch Ljava/io/IOException; {:try_start_769 .. :try_end_76c} :catch_928

    .line 587
    :cond_76c
    :goto_76c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 572
    .end local v33    # "args":[Ljava/lang/String;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    :cond_772
    const/16 v80, 0x0

    goto :goto_748

    .line 573
    .restart local v80    # "checkin":Z
    :cond_775
    const/16 v81, 0x0

    goto :goto_750

    .line 574
    .restart local v81    # "dumpInfo":Z
    :cond_778
    const/16 v82, 0x0

    goto :goto_758

    .line 580
    .restart local v33    # "args":[Ljava/lang/String;
    .restart local v82    # "dumpDalvik":Z
    :catchall_77b
    move-exception v5

    .line 581
    :try_start_77c
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_77f
    .catch Ljava/io/IOException; {:try_start_77c .. :try_end_77f} :catch_92b

    .line 584
    :goto_77f
    throw v5

    .line 593
    .end local v33    # "args":[Ljava/lang/String;
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_780
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 595
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 596
    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_79f

    .line 598
    :try_start_791
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_79c
    .catchall {:try_start_791 .. :try_end_79c} :catchall_7a5

    .line 601
    :try_start_79c
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79f
    .catch Ljava/io/IOException; {:try_start_79c .. :try_end_79f} :catch_92e

    .line 607
    :cond_79f
    :goto_79f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 600
    :catchall_7a5
    move-exception v5

    .line 601
    :try_start_7a6
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a9
    .catch Ljava/io/IOException; {:try_start_7a6 .. :try_end_7a9} :catch_931

    .line 604
    :goto_7a9
    throw v5

    .line 613
    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_7aa
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .line 615
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 616
    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_7c9

    .line 618
    :try_start_7bb
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7c6
    .catchall {:try_start_7bb .. :try_end_7c6} :catchall_7cf

    .line 621
    :try_start_7c6
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7c9
    .catch Ljava/io/IOException; {:try_start_7c6 .. :try_end_7c9} :catch_934

    .line 627
    :cond_7c9
    :goto_7c9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 620
    :catchall_7cf
    move-exception v5

    .line 621
    :try_start_7d0
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7d3
    .catch Ljava/io/IOException; {:try_start_7d0 .. :try_end_7d3} :catch_937

    .line 624
    :goto_7d3
    throw v5

    .line 633
    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_7d4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v107

    .line 635
    .local v107, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 642
    .end local v107    # "provider":Landroid/os/IBinder;
    :sswitch_7ec
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 644
    .restart local v85    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v109

    .line 645
    .local v109, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 646
    .local v110, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v109

    move/from16 v3, v110

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 653
    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v109    # "requestToken":Landroid/os/IBinder;
    .end local v110    # "requestType":I
    :sswitch_810
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 655
    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_833

    const/16 v118, 0x1

    .line 656
    .local v118, "timeout":Z
    :goto_824
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 655
    .end local v118    # "timeout":Z
    :cond_833
    const/16 v118, 0x0

    goto :goto_824

    .line 663
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_836
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 665
    .restart local v29    # "token":Landroid/os/IBinder;
    new-instance v101, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 666
    .local v101, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 673
    .end local v29    # "token":Landroid/os/IBinder;
    .end local v101    # "options":Landroid/app/ActivityOptions;
    :sswitch_85b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 675
    .local v20, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 682
    .end local v20    # "state":I
    :sswitch_873
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/content/pm/ProviderInfo;

    .line 684
    .local v107, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 691
    .end local v107    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_891
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 693
    .restart local v85    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v99

    .line 694
    .restart local v99    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResetTargetHeapUtilization(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 695
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 701
    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v99    # "msg":Ljava/lang/String;
    :sswitch_8ac
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v95

    .line 703
    .local v95, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v95

    if-ne v0, v5, :cond_8c8

    const/4 v5, 0x1

    :goto_8bd
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 703
    :cond_8c8
    const/4 v5, 0x0

    goto :goto_8bd

    .line 710
    .end local v95    # "is24Hour":B
    :sswitch_8ca
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 712
    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 719
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_8e2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 721
    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_904

    const/16 v91, 0x1

    .line 722
    .local v91, "enabled":Z
    :goto_8f5
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 721
    .end local v91    # "enabled":Z
    :cond_904
    const/16 v91, 0x0

    goto :goto_8f5

    .line 729
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_907
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 731
    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 398
    .end local v29    # "token":Landroid/os/IBinder;
    .restart local v33    # "args":[Ljava/lang/String;
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v112    # "service":Landroid/os/IBinder;
    :catch_91f
    move-exception v5

    goto/16 :goto_4e0

    .line 413
    :catch_922
    move-exception v5

    goto/16 :goto_508

    .line 539
    .end local v112    # "service":Landroid/os/IBinder;
    .restart local v84    # "activity":Landroid/os/IBinder;
    .restart local v105    # "prefix":Ljava/lang/String;
    :catch_925
    move-exception v5

    goto/16 :goto_6dd

    .line 582
    .end local v84    # "activity":Landroid/os/IBinder;
    .end local v105    # "prefix":Ljava/lang/String;
    .restart local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v80    # "checkin":Z
    .restart local v81    # "dumpInfo":Z
    .restart local v82    # "dumpDalvik":Z
    :catch_928
    move-exception v5

    goto/16 :goto_76c

    :catch_92b
    move-exception v11

    goto/16 :goto_77f

    .line 602
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    :catch_92e
    move-exception v5

    goto/16 :goto_79f

    :catch_931
    move-exception v11

    goto/16 :goto_7a9

    .line 622
    :catch_934
    move-exception v5

    goto/16 :goto_7c9

    :catch_937
    move-exception v11

    goto/16 :goto_7d3

    .line 78
    :sswitch_data_93a
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_39
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_9b
        0x6 -> :sswitch_c7
        0x7 -> :sswitch_e4
        0x8 -> :sswitch_1db
        0x9 -> :sswitch_1f8
        0xa -> :sswitch_237
        0xb -> :sswitch_289
        0xc -> :sswitch_344
        0xd -> :sswitch_359
        0xe -> :sswitch_405
        0x10 -> :sswitch_41f
        0x11 -> :sswitch_30b
        0x12 -> :sswitch_43a
        0x13 -> :sswitch_4ae
        0x14 -> :sswitch_2ba
        0x15 -> :sswitch_2ec
        0x16 -> :sswitch_4bb
        0x17 -> :sswitch_50b
        0x18 -> :sswitch_55e
        0x19 -> :sswitch_56b
        0x1a -> :sswitch_17f
        0x1b -> :sswitch_7b
        0x1c -> :sswitch_5a7
        0x1d -> :sswitch_5e0
        0x1e -> :sswitch_5f5
        0x1f -> :sswitch_622
        0x20 -> :sswitch_836
        0x21 -> :sswitch_412
        0x22 -> :sswitch_649
        0x23 -> :sswitch_664
        0x24 -> :sswitch_679
        0x25 -> :sswitch_6b2
        0x26 -> :sswitch_447
        0x27 -> :sswitch_454
        0x28 -> :sswitch_6e0
        0x29 -> :sswitch_6f5
        0x2a -> :sswitch_716
        0x2b -> :sswitch_72b
        0x2c -> :sswitch_780
        0x2d -> :sswitch_4e3
        0x2e -> :sswitch_7aa
        0x2f -> :sswitch_7d4
        0x30 -> :sswitch_7ec
        0x31 -> :sswitch_810
        0x32 -> :sswitch_85b
        0x33 -> :sswitch_873
        0x34 -> :sswitch_8ac
        0x35 -> :sswitch_8ca
        0x36 -> :sswitch_8e2
        0x37 -> :sswitch_907
        0x3e9 -> :sswitch_57e
        0x3eb -> :sswitch_891
        0x5dd -> :sswitch_481
        0x7d1 -> :sswitch_21c
    .end sparse-switch
.end method
