.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsIntentReceiver$AssistiveLightIntentReceiver;,
        Lcom/android/settings/SettingsIntentReceiver$UPlusSettingsIntentReceiver;
    }
.end annotation


# static fields
.field private static cfmsService:Landroid/os/CustomFrequencyManager;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final activeKeyID:I

.field private mContext:Landroid/content/Context;

.field mSalesCode:Ljava/lang/String;

.field private final warningNotificationID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 134
    const v0, 0x7f0205ba

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->warningNotificationID:I

    .line 135
    const v0, 0x7f0205b5

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->activeKeyID:I

    .line 2429
    return-void
.end method

.method private EnablingDrivingMode(I)V
    .locals 24
    .param p1, "state"    # I

    .prologue
    .line 1772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 1773
    .local v21, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 1774
    .local v22, "mUser":Landroid/content/pm/UserInfo;
    const/16 v20, 0x0

    .line 1775
    .local v20, "mCount":I
    const/4 v7, 0x0

    .line 1776
    .local v7, "CarBT":Z
    const/16 v19, 0x0

    .line 1777
    .local v19, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v9, "voice_input_control"

    .line 1778
    .local v9, "KEY_VOICE_INPUT_CONTROL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1779
    .local v17, "keyVC":I
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 1780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1781
    .local v23, "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1782
    .local v8, "Enterinput":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1783
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1784
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1785
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1786
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1790
    :cond_1
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "location_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1794
    const/4 v7, 0x1

    .line 1799
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1802
    :cond_3
    const-string v12, "0"

    .line 1803
    .local v12, "flagBT":Ljava/lang/String;
    const-string v13, "0"

    .line 1804
    .local v13, "flagGPS":Ljava/lang/String;
    const-string v14, "0"

    .line 1805
    .local v14, "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1806
    if-eqz v19, :cond_4

    .line 1807
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v7, v1, :cond_4

    .line 1808
    const-string v12, "1"

    .line 1809
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1812
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1813
    .local v15, "gpsEnabled":Z
    if-nez v15, :cond_5

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1814
    const-string v13, "1"

    .line 1815
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v16, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1820
    .end local v16    # "i":Landroid/content/Intent;
    :cond_5
    if-nez v17, :cond_6

    .line 1822
    new-instance v18, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1823
    .local v18, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v18, :cond_6

    .line 1824
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1825
    const-string v14, "1"

    .line 1826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1831
    .end local v18    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_6
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1832
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "1"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1833
    const-string v1, "BT"

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1834
    const-string v1, "GPS"

    invoke-interface {v11, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1835
    const-string v1, "VC"

    invoke-interface {v11, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1836
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1878
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_7
    :goto_1
    return-void

    .line 1797
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1839
    .end local v8    # "Enterinput":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v23    # "pref":Landroid/content/SharedPreferences;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1840
    .restart local v23    # "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1841
    .restart local v8    # "Enterinput":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1842
    const-string v1, "BT"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1843
    .restart local v12    # "flagBT":Ljava/lang/String;
    const-string v1, "GPS"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1844
    .restart local v13    # "flagGPS":Ljava/lang/String;
    const-string v1, "VC"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1846
    .restart local v14    # "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1847
    if-eqz v19, :cond_a

    .line 1848
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    const-string v1, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1849
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1852
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1853
    .restart local v15    # "gpsEnabled":Z
    if-eqz v15, :cond_b

    const-string v1, "1"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1854
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1855
    .restart local v16    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1859
    .end local v16    # "i":Landroid/content/Intent;
    :cond_b
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_c

    const-string v1, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1863
    :cond_c
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1864
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1865
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1866
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1867
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1868
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1870
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_d
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1871
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1872
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1873
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1874
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1875
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method private EnablingDrivingModeAirCallAccept(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1696
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_air_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1697
    .local v0, "AirCallAccept":I
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "EnablingDrivingModeAirCallAccept"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirCallAccept : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    if-ne v0, v12, :cond_2

    .line 1700
    if-ne p1, v12, :cond_3

    .line 1701
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1703
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1704
    .local v3, "Enterinput":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1705
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1706
    .local v1, "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1708
    .local v2, "AirGestureMaster":I
    const-string v5, "0"

    .line 1709
    .local v5, "flagCall":Ljava/lang/String;
    const-string v6, "0"

    .line 1711
    .local v6, "flagMaster":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1712
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt ARC_MOTION_CALL_ACCEPT = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1714
    const-string v5, "1"

    .line 1717
    :cond_0
    if-nez v2, :cond_1

    .line 1718
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt MASTER_ARC_MOTION = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1720
    const-string v6, "1"

    .line 1723
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1724
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1725
    const-string v8, "AIRCALL"

    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1726
    const-string v8, "MASTER"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1727
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1769
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v3    # "Enterinput":Ljava/lang/String;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 1730
    :cond_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 0"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1732
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1733
    .restart local v3    # "Enterinput":Ljava/lang/String;
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enterinput : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string v8, "1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1736
    const-string v8, "AIRCALL"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1737
    .restart local v5    # "flagCall":Ljava/lang/String;
    const-string v8, "MASTER"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1739
    .restart local v6    # "flagMaster":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1740
    .restart local v1    # "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1742
    .restart local v2    # "AirGestureMaster":I
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagMaster : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    if-ne v1, v12, :cond_4

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1746
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore ARC_MOTION_CALL_ACCEPT"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1750
    :cond_4
    if-ne v2, v12, :cond_5

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1751
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore MASTER_ARC_MOTION"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1755
    :cond_5
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1756
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1757
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1758
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1759
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1761
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1762
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1763
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1764
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1765
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2120
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 2122
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2123
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2124
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2128
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 2136
    :cond_1
    :goto_1
    return v3

    .line 2132
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 2133
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2099
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 2101
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2102
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2103
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 2116
    :cond_1
    :goto_1
    return-object v3

    .line 2111
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 2116
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private SetMyProfileTextSize(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2203
    const-string v11, "layout_inflater"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2204
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f04012d

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2205
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f100242

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/myprofile/EllipsisEditText;

    .line 2207
    .local v6, "mTvPreviewText":Lcom/android/settings/myprofile/EllipsisEditText;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_information"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2208
    .local v7, "mypofile_string":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2252
    :goto_0
    return-void

    .line 2212
    :cond_0
    const/4 v8, 0x0

    .line 2213
    .local v8, "otherContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_package"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2214
    .local v5, "mFontStylePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_filename"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2216
    .local v4, "mFontFileNames":Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {p1, v5, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 2221
    :goto_1
    if-eqz v8, :cond_1

    .line 2222
    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 2223
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 2224
    .local v2, "fontTypeface":Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2225
    const/4 v2, 0x0

    .line 2226
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2227
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2234
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "fontTypeface":Landroid/graphics/Typeface;
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Personal Banner"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a13e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2242
    :cond_2
    :goto_3
    const/4 v11, 0x1

    new-array v0, v11, [Landroid/text/InputFilter;

    .line 2243
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0012

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2244
    .local v9, "profileMaxCharLimit":I
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v0, v11

    .line 2245
    invoke-virtual {v6, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 2248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0195

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 2249
    invoke-virtual {v6, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2250
    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->fontChange()V

    .line 2251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_text_size"

    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2236
    .end local v0    # "FilterArray":[Landroid/text/InputFilter;
    .end local v9    # "profileMaxCharLimit":I
    :cond_3
    const-string v11, "Life companion"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a13e5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2238
    :cond_4
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Personal message"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a13db

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2217
    .restart local v4    # "mFontFileNames":Ljava/lang/String;
    .restart local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 2229
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_2
.end method

.method static synthetic access$000()Landroid/os/CustomFrequencyManager;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;

    .prologue
    .line 117
    sput-object p0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object p0
.end method

.method private checkReactivationLock(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2491
    const/4 v1, 0x0

    .line 2492
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2493
    sget-object v3, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 2494
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2495
    const/4 v1, 0x1

    .line 2500
    const-string v2, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 2503
    :cond_1
    return v2
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 1989
    const-string v0, "sys/class/sec/switch/adc"

    .line 1990
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 1991
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 1992
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 1994
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 1996
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1997
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2006
    if-eqz v4, :cond_0

    .line 2007
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 2013
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2015
    const/4 v7, 0x1

    .line 2017
    :cond_2
    return v7

    .line 2009
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 2010
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 2012
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 1999
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 2000
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2006
    if-eqz v3, :cond_1

    .line 2007
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2009
    :catch_2
    move-exception v2

    .line 2010
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2001
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2002
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2006
    if-eqz v3, :cond_1

    .line 2007
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2009
    :catch_4
    move-exception v2

    .line 2010
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2005
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2006
    :goto_3
    if-eqz v3, :cond_3

    .line 2007
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2011
    :cond_3
    :goto_4
    throw v7

    .line 2009
    :catch_5
    move-exception v2

    .line 2010
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2005
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 2001
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 1999
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private checkVOLanguage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2255
    const/4 v0, 0x0

    .line 2256
    .local v0, "bCheck":Z
    new-instance v2, Lcom/android/settings/handwritingsearch/RMHelper;

    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    .line 2257
    .local v2, "mHelper":Lcom/android/settings/handwritingsearch/RMHelper;
    invoke-virtual {v2}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v3

    .line 2259
    .local v3, "mLangList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2260
    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2261
    const/4 v0, 0x1

    .line 2265
    :cond_0
    return v0

    .line 2259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2473
    const-string v2, ""

    .line 2474
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2476
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2477
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2479
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 2480
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2486
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 2482
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 1966
    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1969
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1970
    const-string v3, ""

    .line 1973
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1974
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1976
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1977
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1979
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 1980
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1982
    const/4 v4, 0x1

    .line 1985
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2366
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2368
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private makeActiveKeyNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2176
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2200
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    return-void
.end method

.method private makeDMfile()V
    .locals 6

    .prologue
    .line 2050
    const/4 v2, 0x0

    .line 2052
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/samsungaccount.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "dmFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_2

    .line 2064
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 2070
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2065
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 2066
    .local v1, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2067
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2055
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2061
    if-eqz v2, :cond_0

    .line 2064
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2065
    :catch_2
    move-exception v1

    .line 2066
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2057
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2061
    if-eqz v2, :cond_0

    .line 2064
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 2065
    :catch_4
    move-exception v1

    .line 2066
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2060
    .end local v1    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2061
    if-eqz v2, :cond_1

    .line 2064
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2067
    :cond_1
    :goto_1
    throw v4

    .line 2065
    :catch_5
    move-exception v1

    .line 2066
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private makeSecurityWarningNotificaiton()V
    .locals 12

    .prologue
    const v11, 0x7f0a1a4c    # 1.8357E38f

    const v10, 0x7f0205ba

    const/4 v9, 0x0

    .line 2141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ATT"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2143
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2172
    :cond_1
    :goto_0
    return-void

    .line 2145
    :cond_2
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2146
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "pref_security_warning"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2148
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2149
    .local v6, "warningIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2150
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.SecurityWarningDialog"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2151
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2154
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2155
    .local v5, "warningClearIntent":Landroid/content/Intent;
    const-string v7, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2156
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2158
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2159
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2160
    .local v3, "noti":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a1a4b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 2169
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private sendDrivingmodeNotification(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v13, 0x7f0a0ddc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1880
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_on"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1883
    .local v7, "state":I
    const v5, 0x7f0205b8

    .line 1884
    .local v5, "notiID":I
    const-string v11, "notification"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1886
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "zen_mode"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1887
    .local v8, "zenmode":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    if-ne v8, v10, :cond_3

    :cond_2
    move v0, v10

    .line 1891
    .local v0, "dndEnabled":Z
    :goto_1
    new-instance v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1892
    .local v1, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v1, :cond_5

    .line 1893
    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1894
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1895
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v11, "com.vlingo.midas"

    const-string v12, "com.vlingo.midas.gui.ConversationActivity"

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    const/high16 v11, 0x10000000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1897
    invoke-static {p1, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1904
    .end local v2    # "mIntent":Landroid/content/Intent;
    .local v6, "sender":Landroid/app/PendingIntent;
    :goto_2
    if-ne v7, v10, :cond_6

    if-nez v0, :cond_6

    .line 1905
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1907
    .local v4, "noti":Landroid/app/Notification$Builder;
    const v9, 0x7f0205b8

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0dc8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1910
    invoke-virtual {p1, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1911
    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1915
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v0    # "dndEnabled":Z
    .end local v1    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .end local v4    # "noti":Landroid/app/Notification$Builder;
    .end local v6    # "sender":Landroid/app/PendingIntent;
    :cond_3
    move v0, v9

    .line 1887
    goto :goto_1

    .line 1899
    .restart local v0    # "dndEnabled":Z
    .restart local v1    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_4
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v11, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .restart local v6    # "sender":Landroid/app/PendingIntent;
    goto :goto_2

    .line 1902
    .end local v6    # "sender":Landroid/app/PendingIntent;
    :cond_5
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v11, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .restart local v6    # "sender":Landroid/app/PendingIntent;
    goto :goto_2

    .line 1917
    :cond_6
    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private sendTalkbackNotification(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 1923
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1924
    .local v5, "nManager":Landroid/app/NotificationManager;
    const v7, 0xd20fe

    .line 1925
    .local v7, "notificationID":I
    const v1, 0xcae7d

    .line 1926
    .local v1, "emergencyNotificationID":I
    const/4 v2, 0x0

    .line 1927
    .local v2, "isEmergencyModeEnabled":Z
    iget-object v9, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 1928
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_0

    .line 1929
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1930
    const/4 v2, 0x1

    .line 1932
    :cond_0
    if-eqz p2, :cond_3

    .line 1933
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 1934
    .local v6, "notification":Landroid/app/Notification;
    const v9, 0x7f0205bb

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 1935
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Landroid/app/Notification;->when:J

    .line 1936
    iget v9, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 1938
    const v9, 0x7f0a0a66

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1940
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    :cond_1
    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 1945
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p1, v0, v9, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1947
    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1963
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 1949
    .restart local v0    # "TitleText":Ljava/lang/String;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1950
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const v9, 0x8000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1952
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1953
    .local v8, "pi":Landroid/app/PendingIntent;
    const v9, 0x7f0a0a67

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v0, v9, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1955
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1958
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 1959
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1961
    :cond_4
    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "currentLang"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 2269
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "handwriting_language_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2270
    .local v6, "imLanguageList":Ljava/lang/String;
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() handwriting_language_list : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "and current handwriting language : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2273
    .local v9, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2274
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "pref_current_handwriting_lang_llist"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2275
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2277
    const/4 v1, 0x0

    .line 2278
    .local v1, "bFindVOLanguage":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2279
    .local v2, "defaultLocale":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 2280
    .local v8, "setLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2282
    .local v0, "bCheckKeepCurLang":Z
    if-eqz v6, :cond_0

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2283
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2284
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2323
    :cond_1
    :goto_0
    if-ne v0, v13, :cond_a

    .line 2324
    move-object v8, p1

    .line 2356
    :cond_2
    :goto_1
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() setLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    return-object v8

    .line 2286
    :cond_3
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2288
    .local v7, "inputLanguage":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v10, v7

    if-ge v5, v10, :cond_5

    .line 2289
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v7, v5

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2290
    const/4 v0, 0x1

    .line 2288
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2294
    :cond_5
    if-nez v0, :cond_1

    .line 2295
    array-length v10, v7

    if-ne v10, v13, :cond_6

    .line 2296
    const/4 v10, 0x0

    aget-object p1, v7, v10

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2299
    :cond_6
    const/4 v4, 0x0

    .line 2300
    .local v4, "firstLanguae":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    array-length v10, v7

    if-ge v5, v10, :cond_9

    .line 2301
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2302
    aget-object v10, v7, v5

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2303
    aget-object p1, v7, v5

    .line 2304
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2306
    :cond_7
    if-nez v4, :cond_8

    .line 2307
    aget-object v4, v7, v5

    .line 2300
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2312
    :cond_9
    if-nez v1, :cond_1

    .line 2313
    if-eqz v4, :cond_1

    .line 2314
    move-object p1, v4

    .line 2315
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2326
    .end local v4    # "firstLanguae":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "inputLanguage":[Ljava/lang/String;
    :cond_a
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() bFindVOLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    if-ne v1, v13, :cond_b

    .line 2328
    move-object v8, p1

    goto/16 :goto_1

    .line 2330
    :cond_b
    const-string v10, "en_GB"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2331
    const-string v8, "en_GB"

    .line 2336
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2337
    const-string v10, "ko_KR"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2338
    const-string v8, "ko_KR"

    .line 2342
    :cond_d
    const-string v10, "ATT"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "VZW"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SPR"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "TMB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "USC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2345
    :cond_e
    const-string v8, "en_US"

    .line 2348
    :cond_f
    const-string v10, "XTC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "SMA"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "GLB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "XTE"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2350
    :cond_10
    const-string v8, "en_US"

    goto/16 :goto_1

    .line 2332
    :cond_11
    const-string v10, "en_US"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2333
    const-string v8, "en_US"

    goto :goto_4
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onoff"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2021
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2046
    :goto_0
    return-void

    .line 2024
    :cond_0
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FMM enabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2026
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2027
    if-eqz p2, :cond_2

    .line 2028
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/SettingsIntentReceiver;->SetReactivationServiceFlag(ILandroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 2029
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2030
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_on"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "SettingsIntentReceiver"

    const-string v5, " toggleFmm[remotecontrol_on]"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2034
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "SettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFmm on [ServiceFlag] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_2
    :goto_1
    const-string v3, "FMMPreferences"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2043
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2044
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_fmm"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2045
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2038
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 6
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    .line 2073
    const/4 v2, 0x0

    .line 2075
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/mobiletracker.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2077
    .local v1, "mtFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2087
    if-eqz v3, :cond_2

    .line 2090
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2096
    .end local v1    # "mtFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2091
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 2092
    .local v0, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2093
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2079
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v1    # "mtFileName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2087
    :goto_1
    if-eqz v2, :cond_0

    .line 2090
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2091
    :catch_2
    move-exception v0

    .line 2092
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2081
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2087
    :goto_2
    if-eqz v2, :cond_0

    .line 2090
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 2091
    :catch_4
    move-exception v0

    .line 2092
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2083
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 2087
    :goto_3
    if-eqz v2, :cond_0

    .line 2090
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 2091
    :catch_6
    move-exception v0

    .line 2092
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2086
    .end local v0    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2087
    :goto_4
    if-eqz v2, :cond_1

    .line 2090
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2093
    :cond_1
    :goto_5
    throw v4

    .line 2091
    :catch_7
    move-exception v0

    .line 2092
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2086
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2083
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2081
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 2079
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 2372
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2373
    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2374
    const-string v1, ""

    .line 2375
    .local v1, "RetDateFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2377
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2378
    .local v0, "NumCheck":C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_0

    .line 2379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2375
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2382
    .end local v0    # "NumCheck":C
    :cond_1
    return-object v1
.end method

.method public SetReactivationServiceFlag(ILandroid/content/Context;)I
    .locals 3
    .param p1, "setFlag"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2464
    sget-object v1, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-static {p2}, Lcom/android/settings/SettingsIntentReceiver;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2465
    const-string v0, "SettingsIntentReceiver"

    const-string v1, "SetReactivationServiceFlag() returns error!! "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const/4 v0, 0x0

    .line 2469
    :cond_0
    return v0
.end method

.method public SetRegionalDate_Update()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 2386
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2387
    .local v8, "dateFormats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2388
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2390
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v5

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2391
    .local v10, "format":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2392
    const/4 v9, 0x0

    .line 2393
    .local v9, "flag":Z
    const/4 v7, 0x0

    .line 2394
    .local v7, "curAppliedDate":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    array-length v1, v8

    if-ge v11, v1, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 2396
    .local v12, "tempDate":Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2397
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2398
    move v7, v11

    .line 2399
    const/4 v9, 0x1

    .line 2403
    .end local v12    # "tempDate":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 2404
    const/4 v7, -0x1

    .line 2406
    :cond_1
    return v7

    .line 2394
    .restart local v12    # "tempDate":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 139
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 142
    .local v18, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v125

    .line 143
    .local v125, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v92

    .line 144
    .local v92, "mPm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    new-instance v5, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 151
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    :cond_1
    new-instance v5, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 156
    :cond_2
    const-string v5, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v59

    .line 158
    .local v59, "extras":Landroid/os/Bundle;
    const-string v5, "MTDATA"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v134

    .line 160
    .local v134, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 164
    const-string v5, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    const-string v6, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_3
    const-string v5, "com.android.settings.action.talkback_off"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 169
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v36

    .line 173
    .local v36, "bundle_data":Landroid/os/Bundle;
    const-string v5, "is_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 174
    .local v78, "is_enabled":Z
    if-eqz v78, :cond_4

    .line 175
    const-string v5, "option_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v86

    .line 176
    .local v86, "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v86

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 179
    .end local v36    # "bundle_data":Landroid/os/Bundle;
    .end local v78    # "is_enabled":Z
    .end local v86    # "mDisableExclusiveOptionsFlag":I
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1585
    :cond_5
    :goto_1
    const-string v5, "android.net.ethernet.ETH_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1586
    const-string v5, "eth_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v105

    .line 1587
    .local v105, "nEthState":I
    const-string v5, "lan_cable_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1589
    .local v31, "bLanCableState":Z
    const/4 v5, 0x1

    move/from16 v0, v105

    if-ne v0, v5, :cond_be

    .line 1590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a1a1e

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1599
    :cond_6
    :goto_2
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ETH_STATE_CHANGED - eth_state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v105

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lan_cable_state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    .end local v31    # "bLanCableState":Z
    .end local v105    # "nEthState":I
    :cond_7
    const-string v5, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1607
    const-string v5, "samsung_signin"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1608
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 1611
    :cond_8
    const-string v5, "android.settings.DRIVING_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "android.settings.DRIVING_UPDATE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1612
    :cond_9
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 1614
    .local v133, "state":I
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1615
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingMode(I)V

    .line 1616
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1617
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingModeAirCallAccept(I)V

    .line 1619
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1622
    .end local v133    # "state":I
    :cond_b
    const-string v5, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1623
    new-instance v52, Landroid/content/Intent;

    invoke-direct/range {v52 .. v52}, Landroid/content/Intent;-><init>()V

    .line 1624
    .local v52, "drivingModeIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$DrivingModeSettingsActivity"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1627
    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1629
    .end local v52    # "drivingModeIntent":Landroid/content/Intent;
    :cond_c
    const-string v5, "android.intent.action.SMARTNETWORK_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1630
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_bf

    const/16 v73, 0x1

    .line 1632
    .local v73, "isOn":Z
    :goto_3
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 1633
    .local v96, "mStatusBar":Landroid/app/StatusBarManager;
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1634
    const-string v5, "smart_network"

    const v6, 0x7f0205be

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1635
    if-eqz v73, :cond_c0

    .line 1636
    const-string v5, "smart_network"

    const/4 v6, 0x1

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1642
    :cond_d
    :goto_4
    new-instance v34, Landroid/content/Intent;

    const-string v5, "com.android.phone.smartnetwork.widget_reload_action"

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v34, "broadcastIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1646
    .end local v34    # "broadcastIntent":Landroid/content/Intent;
    .end local v73    # "isOn":Z
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_e
    const-string v5, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1647
    const-string v5, "icc_lock_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v57

    .line 1648
    .local v57, "enable":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "icc_lock_enable"

    move/from16 v0, v57

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1652
    .end local v57    # "enable":I
    :cond_f
    const-string v5, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1653
    const-string v5, "connected"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v98

    .line 1654
    .local v98, "mUsbConnected":Z
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v120

    .line 1655
    .local v120, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v120 .. v120}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1656
    .local v54, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "usb_connection_state"

    move-object/from16 v0, v54

    move/from16 v1, v98

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1657
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c1

    const/16 v135, 0x1

    .line 1660
    .local v135, "usb_tethering_enabled":Z
    :goto_5
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usb_tethering_enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v135

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v98

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    if-nez v98, :cond_10

    if-eqz v135, :cond_10

    .line 1663
    const-string v5, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1669
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v98    # "mUsbConnected":Z
    .end local v120    # "pref":Landroid/content/SharedPreferences;
    .end local v135    # "usb_tethering_enabled":Z
    :cond_10
    const-string v5, "GSM"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "com.samsung.intent.action.Slot1OffCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot1OnCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot2OffCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot2OnCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1674
    :cond_11
    new-instance v34, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Force"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1675
    .restart local v34    # "broadcastIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1679
    .end local v34    # "broadcastIntent":Landroid/content/Intent;
    :cond_12
    const-string v5, "android.net.conn.SwitchDataNetworkDuringWLANandSmartbonding"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1680
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SwitchDataNetworkDuringWLANandSmartbonding receive make toast popup"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0786

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1684
    :cond_13
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1685
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v120

    .line 1686
    .restart local v120    # "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v120 .. v120}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1688
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v133

    .line 1690
    .local v133, "state":Z
    const-string v5, "battery_charging_state"

    move-object/from16 v0, v54

    move/from16 v1, v133

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1691
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1693
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v120    # "pref":Landroid/content/SharedPreferences;
    .end local v133    # "state":Z
    :cond_14
    :goto_6
    return-void

    .line 165
    .restart local v59    # "extras":Landroid/os/Bundle;
    .restart local v134    # "temp":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 186
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_16
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 190
    :cond_17
    const-string v5, "android.intent.action.TALKBACK_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 191
    const-string v5, "mFrom"

    const-string v6, "mNoFrom"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    .line 193
    .local v88, "mFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 194
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Talkback turn off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCast Intent from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 198
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 199
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 203
    :cond_19
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Talkback turn on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCast Intent from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    const-string v7, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v36

    .line 211
    .restart local v36    # "bundle_data":Landroid/os/Bundle;
    const-string v5, "is_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 213
    .restart local v78    # "is_enabled":Z
    if-eqz v78, :cond_1a

    .line 214
    const-string v5, "option_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v86

    .line 215
    .restart local v86    # "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v86

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 218
    .end local v86    # "mDisableExclusiveOptionsFlag":I
    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_18

    .line 220
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 227
    .end local v36    # "bundle_data":Landroid/os/Bundle;
    .end local v78    # "is_enabled":Z
    .end local v88    # "mFrom":Ljava/lang/String;
    :cond_1b
    const-string v5, "android.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 229
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/app/NotificationManager;

    .line 230
    .local v106, "nManager":Landroid/app/NotificationManager;
    const-string v5, "reason"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v55

    .line 231
    .local v55, "emergencyBroadcastCheck":I
    const v109, 0xd20fe

    .line 232
    .local v109, "notificationID":I
    const v56, 0xcae7d

    .line 233
    .local v56, "emergencyNotificationID":I
    new-instance v108, Landroid/app/Notification;

    invoke-direct/range {v108 .. v108}, Landroid/app/Notification;-><init>()V

    .line 234
    .local v108, "notification":Landroid/app/Notification;
    const v5, 0x7f0205bb

    move-object/from16 v0, v108

    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 235
    const-wide/16 v6, 0x0

    move-object/from16 v0, v108

    iput-wide v6, v0, Landroid/app/Notification;->when:J

    .line 236
    move-object/from16 v0, v108

    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v108

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 238
    const v5, 0x7f0a0a66

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 243
    :cond_1c
    const/4 v5, 0x2

    move/from16 v0, v55

    if-ne v0, v5, :cond_1e

    .line 244
    move-object/from16 v0, v106

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 245
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 246
    move-object/from16 v0, v106

    move/from16 v1, v56

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 258
    .end local v16    # "TitleText":Ljava/lang/String;
    .end local v55    # "emergencyBroadcastCheck":I
    .end local v56    # "emergencyNotificationID":I
    .end local v106    # "nManager":Landroid/app/NotificationManager;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v109    # "notificationID":I
    :cond_1d
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/app/NotificationManager;

    .line 259
    .local v91, "mNM":Landroid/app/NotificationManager;
    const v5, 0x7f0205bc

    move-object/from16 v0, v91

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 247
    .end local v91    # "mNM":Landroid/app/NotificationManager;
    .restart local v16    # "TitleText":Ljava/lang/String;
    .restart local v55    # "emergencyBroadcastCheck":I
    .restart local v56    # "emergencyNotificationID":I
    .restart local v106    # "nManager":Landroid/app/NotificationManager;
    .restart local v108    # "notification":Landroid/app/Notification;
    .restart local v109    # "notificationID":I
    :cond_1e
    const/4 v5, 0x4

    move/from16 v0, v55

    if-ne v0, v5, :cond_1d

    .line 248
    move-object/from16 v0, v106

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 249
    new-instance v89, Landroid/content/Intent;

    invoke-direct/range {v89 .. v89}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v89, "mIntent":Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const v5, 0x8000

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v89

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v116

    .line 253
    .local v116, "pi":Landroid/app/PendingIntent;
    const v5, 0x7f0a0a67

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v108

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v116

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 255
    move-object/from16 v0, v106

    move/from16 v1, v109

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_8

    .line 260
    .end local v16    # "TitleText":Ljava/lang/String;
    .end local v55    # "emergencyBroadcastCheck":I
    .end local v56    # "emergencyNotificationID":I
    .end local v89    # "mIntent":Landroid/content/Intent;
    .end local v106    # "nManager":Landroid/app/NotificationManager;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v109    # "notificationID":I
    .end local v116    # "pi":Landroid/app/PendingIntent;
    :cond_1f
    const-string v5, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 261
    const v13, 0xd2158

    .line 262
    .local v13, "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 263
    .local v133, "state":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 265
    .local v110, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    move/from16 v0, v133

    if-ne v0, v5, :cond_20

    .line 268
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v93, "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 275
    .local v117, "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 282
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b21

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 286
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_20
    move-object/from16 v0, v110

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 288
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v133    # "state":I
    :cond_21
    const-string v5, "com.android.settings.action.sound_detector.start"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 289
    const v13, 0xd2158

    .line 290
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 293
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 294
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 300
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b2

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b22

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b22

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 307
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b22

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 309
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 310
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_22
    const-string v5, "com.android.settings.action.sound_detector.stop"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 311
    const v13, 0xd2158

    .line 312
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 315
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 316
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 322
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 329
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b21

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 331
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 332
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_23
    const-string v5, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 333
    const v13, 0xd21bc

    .line 334
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doorbell_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 335
    .restart local v133    # "state":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 337
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    move/from16 v0, v133

    if-ne v0, v5, :cond_24

    .line 340
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 341
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 347
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 354
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b23

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 356
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 358
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_24
    move-object/from16 v0, v110

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 360
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v133    # "state":I
    :cond_25
    const-string v5, "com.android.settings.action.doorbell_detector.start"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 361
    const v13, 0xd21bc

    .line 362
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 365
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 366
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 372
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b2

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b24

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b24

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 379
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b24

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 381
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 382
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_26
    const-string v5, "com.android.settings.action.doorbell_detector.stop"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 383
    const v13, 0xd21bc

    .line 384
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 387
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 388
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 394
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 401
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b23

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 403
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 404
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_27
    const-string v5, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 405
    new-instance v81, Landroid/content/Intent;

    invoke-direct/range {v81 .. v81}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v81, "mAdaptIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ModePreviewDialog"

    move-object/from16 v0, v81

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v95

    .line 410
    .local v95, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "adapt_noti"

    const/4 v6, 0x0

    move-object/from16 v0, v95

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 412
    .local v50, "do_not_show_again":Z
    const/16 v77, 0x1

    .line 414
    .local v77, "isSupportScreenMode":Z
    if-eqz v77, :cond_2a

    const-string v5, "screen_mode_automatic_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    .line 416
    if-nez v50, :cond_29

    .line 417
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 418
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v96, :cond_28

    .line 419
    invoke-virtual/range {v96 .. v96}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 420
    :cond_28
    move-object/from16 v0, p1

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 422
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_29
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 430
    :cond_2a
    const-string v5, "screen_mode_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 435
    .end local v50    # "do_not_show_again":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v81    # "mAdaptIntent":Landroid/content/Intent;
    .end local v95    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_2b
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "torch_light"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 445
    :cond_2c
    const-string v5, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v119

    .line 447
    .local v119, "powersavingState":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 448
    .local v32, "black_grey_powersaving":I
    const/4 v5, 0x1

    move/from16 v0, v119

    if-ne v0, v5, :cond_2d

    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_2d

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 452
    :cond_2d
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 454
    .local v67, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 455
    :catch_0
    move-exception v53

    .line 457
    .local v53, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 460
    .end local v32    # "black_grey_powersaving":I
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v119    # "powersavingState":I
    :cond_2e
    const-string v5, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 462
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 464
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 465
    :catch_1
    move-exception v53

    .line 467
    .restart local v53    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 470
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_2f
    const-string v5, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v138

    .line 473
    .local v138, "wallpaperindex":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sview_color_wallpaper DB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v138

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v5, 0x1

    move/from16 v0, v138

    if-ne v0, v5, :cond_5

    .line 477
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->saveSViewWallpaperDrawable(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 479
    .end local v138    # "wallpaperindex":I
    :cond_30
    const-string v5, "android.intent.action.BCS_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 480
    const-string v5, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 481
    .local v38, "command":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz v38, :cond_31

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v38

    .line 484
    :goto_9
    const-string v5, "AT+AIRPLANEVALUE"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 485
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "ATT CMD is not AT+AIRPLANEVALUE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 483
    :cond_31
    const-string v38, ""

    goto :goto_9

    .line 488
    :cond_32
    new-instance v126, Landroid/content/Intent;

    const-string v5, "android.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v126, "responseIntent":Landroid/content/Intent;
    const-string v70, ""

    .line 490
    .local v70, "isAirplane":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_33

    .line 491
    const-string v70, "ON"

    .line 495
    :goto_a
    const-string v5, "response"

    move-object/from16 v0, v126

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p1

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 493
    :cond_33
    const-string v70, "OFF"

    goto :goto_a

    .line 499
    .end local v38    # "command":Ljava/lang/String;
    .end local v70    # "isAirplane":Ljava/lang/String;
    .end local v126    # "responseIntent":Landroid/content/Intent;
    :cond_34
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v59

    .line 501
    .restart local v59    # "extras":Landroid/os/Bundle;
    const/16 v127, 0x2

    .line 502
    .local v127, "ringerMode":I
    if-eqz v59, :cond_35

    .line 503
    const-string v5, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v127

    .line 511
    :goto_b
    packed-switch v127, :pswitch_data_0

    goto/16 :goto_1

    .line 515
    :pswitch_0
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 506
    :cond_35
    const-string v5, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/AudioManager;

    .line 507
    .local v25, "audioManager":Landroid/media/AudioManager;
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v127

    goto :goto_b

    .line 520
    .end local v25    # "audioManager":Landroid/media/AudioManager;
    :pswitch_1
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 524
    :pswitch_2
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 529
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v127    # "ringerMode":I
    :cond_36
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 532
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, -0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v62

    .line 533
    .local v62, "first_sim_brightness_flag":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first_sim_brightness_flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v5, 0x1

    move/from16 v0, v62

    if-eq v0, v5, :cond_38

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 535
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 536
    const/4 v5, -0x1

    move/from16 v0, v62

    if-ne v0, v5, :cond_38

    .line 537
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 538
    .local v131, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    move-object/from16 v0, v131

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v99

    .line 539
    .local v99, "max_brightness":I
    if-gez v99, :cond_37

    .line 540
    const/16 v99, 0xff

    .line 542
    :cond_37
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    const-string v5, "screen_brightness"

    move-object/from16 v0, v125

    move/from16 v1, v99

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    .end local v99    # "max_brightness":I
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_38
    :goto_c
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    const-string v5, "ro.boot_recovery"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_65

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 603
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    :cond_39
    :goto_d
    :try_start_2
    const-string v5, "db_first_booting"

    const/4 v6, -0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_66

    const/16 v60, 0x1

    .line 630
    .local v60, "first":Z
    :goto_e
    if-nez v60, :cond_3a

    .line 631
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V

    .line 632
    const-string v5, "db_first_booting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 639
    .end local v60    # "first":Z
    :cond_3a
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 640
    const-string v5, "auto_adjust_touch"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v5, 0x1

    :goto_10
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    .line 645
    :cond_3b
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 647
    const-string v5, "power_saving_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_68

    const/4 v5, 0x1

    :goto_11
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 652
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_69

    const/16 v73, 0x1

    .line 654
    .restart local v73    # "isOn":Z
    :goto_12
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 655
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 656
    const-string v5, "smart_network"

    const v6, 0x7f0205be

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 657
    if-eqz v73, :cond_6a

    .line 658
    const-string v5, "smart_network"

    const/4 v6, 0x1

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 664
    :cond_3d
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "audio_balance"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 665
    .local v26, "audio_balance":I
    const/16 v5, 0x32

    move/from16 v0, v26

    if-eq v0, v5, :cond_3e

    .line 666
    const-string v5, "sound_balance"

    move-object/from16 v0, v125

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    const-string v5, "audio_balance"

    const/16 v6, 0x32

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3f

    .line 672
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 674
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_3
    const-string v5, "high_contrast"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6b

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 682
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_3f
    :goto_15
    const-string v5, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 685
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 686
    .local v19, "active_app_list":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 688
    .local v21, "active_app_reset_list":Ljava/lang/String;
    if-eqz v19, :cond_40

    if-eqz v21, :cond_40

    .line 689
    const-string v5, "Volte"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "Volte"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 690
    const-string v5, "Volte"

    const-string v6, "VoLte"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 691
    const-string v5, "Volte"

    const-string v6, "VoLte"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 693
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 694
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 695
    const-string v5, "notification_panel_default_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 701
    .end local v19    # "active_app_list":Ljava/lang/String;
    .end local v21    # "active_app_reset_list":Ljava/lang/String;
    :cond_40
    const-string v5, "torch_light"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_41

    .line 703
    const-string v5, "torch_light"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    new-instance v89, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .restart local v89    # "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    .end local v89    # "mIntent":Landroid/content/Intent;
    :cond_41
    const/16 v77, 0x1

    .line 710
    .restart local v77    # "isSupportScreenMode":Z
    if-eqz v77, :cond_6c

    const-string v5, "screen_mode_automatic_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6c

    .line 712
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 721
    :goto_16
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 723
    const-string v5, "pen_settings"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    .line 724
    .local v44, "currentPenSettings":I
    invoke-static/range {v44 .. v44}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenType(I)Z

    .line 725
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set pen settings to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v5, "pen_detect_mode_disabled"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    .line 728
    .local v42, "currentPenBatterySavingMode":I
    invoke-static/range {v42 .. v42}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 729
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPenBatterySavingMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v42    # "currentPenBatterySavingMode":I
    .end local v44    # "currentPenSettings":I
    :cond_42
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 733
    const-string v5, "pen_hand_side"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 734
    .local v43, "currentPenHandType":I
    invoke-static/range {v43 .. v43}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 735
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPenHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v43    # "currentPenHandType":I
    :cond_43
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 741
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "pref_device_provision"

    const/4 v6, 0x0

    move-object/from16 v0, v131

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_45

    .line 742
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const v6, 0x1d8a8

    if-ne v5, v6, :cond_44

    .line 743
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Overriding setup wizard set screen timeout"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v6, "screen_off_timeout"

    const-string v5, "USC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    const v5, 0xea60

    :goto_17
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    :cond_44
    const-string v5, "device_provisioned"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_45

    .line 748
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 749
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_device_provision"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_45
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 756
    .local v20, "active_app_list_for_reset":Ljava/lang/String;
    if-nez v20, :cond_46

    .line 757
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 758
    .local v114, "original":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v114

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v114

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    const-string v5, "notification_panel_active_number_of_apps_for_reset"

    const/16 v6, 0xa

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    .end local v114    # "original":Ljava/lang/String;
    :cond_46
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 765
    .local v113, "orgList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    const-string v5, "WifiCalling"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 767
    const-string v5, "Bluetooth"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 768
    const-string v5, "Bluetooth;"

    const-string v6, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v103

    .line 769
    .local v103, "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 771
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 772
    .local v80, "listForReset":Ljava/lang/String;
    const-string v5, "WifiCalling"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 773
    const-string v5, "Bluetooth;"

    const-string v6, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v104

    .line 774
    .local v104, "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 780
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_47
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 781
    const-string v5, "SmartScroll"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 782
    const-string v5, "SmartScroll;"

    const-string v6, ""

    move-object/from16 v0, v113

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v103

    .line 783
    .restart local v103    # "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 786
    .restart local v80    # "listForReset":Ljava/lang/String;
    const-string v5, "SmartScroll"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 787
    const-string v5, "SmartScroll;"

    const-string v6, ""

    move-object/from16 v0, v80

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v104

    .line 788
    .restart local v104    # "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_48
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v111

    .line 823
    .local v111, "oldScreenTimOut":I
    const v5, 0x927c0

    move/from16 v0, v111

    if-gt v0, v5, :cond_49

    if-gez v111, :cond_4a

    .line 825
    :cond_49
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Reset screen timeout to 10mins"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v5, "screen_off_timeout"

    const v6, 0x927c0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 829
    :cond_4a
    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v112

    .line 831
    .local v112, "oldStayAwake":I
    if-eqz v112, :cond_4b

    .line 832
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Set stay awake off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 839
    :cond_4b
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4c

    .line 840
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Reset screen timeout to 30 seconds"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 845
    :cond_4c
    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4d

    .line 846
    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    :cond_4d
    const-string v5, "TMB"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 856
    const-string v5, "auto_time"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    const-string v5, "auto_time_zone"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    :cond_4e
    const-string v5, "storage.mmc.size"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 865
    .local v85, "mDefaultMemory":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-wide/16 v48, 0x0

    .line 867
    .local v48, "defaultMem":J
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "storage_mmc_size"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v5, "storage_mmc_size"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4f

    .line 869
    const-string v5, "none"

    move-object/from16 v0, v85

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 870
    invoke-static/range {v85 .. v85}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 871
    const-string v5, "storage_mmc_size"

    move-object/from16 v0, v125

    move-wide/from16 v1, v48

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 875
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 876
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 879
    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6e

    const/16 v76, 0x1

    .line 880
    .local v76, "isSoundDetectorOn":Z
    :goto_18
    if-eqz v76, :cond_51

    .line 881
    const v13, 0xd2158

    .line 882
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 886
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 887
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 892
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isBabyCryingEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 894
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 901
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b21

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 903
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 906
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doorbell_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6f

    const/16 v72, 0x1

    .line 907
    .local v72, "isDoorbellDetectorOn":Z
    :goto_19
    if-eqz v72, :cond_52

    .line 908
    const v13, 0xd21bc

    .line 909
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 913
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 914
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 919
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isDoorbellEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 921
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b23

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 928
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b20

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b23

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 930
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 933
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_52
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 935
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 937
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "boottime"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v61

    .line 940
    .local v61, "firstBoot":I
    if-nez v61, :cond_76

    .line 942
    const/4 v14, 0x0

    .line 943
    .local v14, "SavedApplist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 944
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode List: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v5, 0x80

    move-object/from16 v0, v92

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v87

    .line 946
    .local v87, "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v66, 0x0

    .local v66, "i":I
    :goto_1a
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_72

    .line 948
    :try_start_4
    move-object/from16 v0, v87

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v118, v0

    .line 949
    .local v118, "pkgName":Ljava/lang/String;
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 950
    .local v22, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v5, :cond_70

    .line 946
    .end local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v118    # "pkgName":Ljava/lang/String;
    :cond_53
    :goto_1b
    add-int/lit8 v66, v66, 0x1

    goto :goto_1a

    .line 547
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v26    # "audio_balance":I
    .end local v48    # "defaultMem":J
    .end local v61    # "firstBoot":I
    .end local v66    # "i":I
    .end local v72    # "isDoorbellDetectorOn":Z
    .end local v73    # "isOn":Z
    .end local v76    # "isSoundDetectorOn":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v85    # "mDefaultMemory":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v111    # "oldScreenTimOut":I
    .end local v112    # "oldStayAwake":I
    .end local v113    # "orgList":Ljava/lang/String;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v47

    .line 551
    .local v47, "default_brightness":I
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 552
    const-string v5, "hltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-01F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "kltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-04F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "kltedcmactive"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-02G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "sltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "trltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "tbltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-01G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "klimtltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "SC-03G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 562
    :cond_55
    const-string v5, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/SettingsIntentReceiver;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 563
    const-string v5, "hltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SC-01F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 565
    :cond_56
    const/16 v47, 0x46

    .line 592
    :cond_57
    :goto_1c
    const-string v5, "screen_brightness"

    move-object/from16 v0, v125

    move/from16 v1, v47

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 594
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    :cond_58
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 566
    :cond_59
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 568
    :cond_5a
    const/16 v47, 0x50

    goto :goto_1c

    .line 569
    :cond_5b
    const-string v5, "kltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "SC-04F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 571
    :cond_5c
    const/16 v47, 0x28

    goto :goto_1c

    .line 572
    :cond_5d
    const-string v5, "sltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 574
    const/16 v47, 0x2d

    goto :goto_1c

    .line 575
    :cond_5e
    const-string v5, "trltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 577
    const/16 v47, 0x2d

    goto :goto_1c

    .line 578
    :cond_5f
    const-string v5, "tbltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    const-string v5, "SC-01G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 580
    :cond_60
    const/16 v47, 0x2d

    goto/16 :goto_1c

    .line 581
    :cond_61
    const-string v5, "kltedcmactive"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "SC-02G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 583
    :cond_62
    const/16 v47, 0x2d

    goto/16 :goto_1c

    .line 584
    :cond_63
    const-string v5, "klimtltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    const-string v5, "SC-03G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 586
    :cond_64
    const/16 v47, 0x34

    goto/16 :goto_1c

    .line 605
    .end local v47    # "default_brightness":I
    :cond_65
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "ro.boot_recovery"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_39

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 606
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 629
    :cond_66
    const/16 v60, 0x0

    goto/16 :goto_e

    .line 634
    :catch_2
    move-exception v53

    .line 635
    .local v53, "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, " Error changing font size for myprofile"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 640
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_67
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 647
    :cond_68
    const/4 v5, 0x0

    goto/16 :goto_11

    .line 652
    :cond_69
    const/16 v73, 0x0

    goto/16 :goto_12

    .line 660
    .restart local v73    # "isOn":Z
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_6a
    const-string v5, "smart_network"

    const/4 v6, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 674
    .restart local v26    # "audio_balance":I
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_6b
    const/4 v5, 0x0

    goto/16 :goto_14

    .line 675
    :catch_3
    move-exception v53

    .line 677
    .local v53, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_15

    .line 717
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v77    # "isSupportScreenMode":Z
    :cond_6c
    const-string v5, "screen_mode_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_16

    .line 744
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6d
    const/16 v5, 0x7530

    goto/16 :goto_17

    .line 879
    .restart local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .restart local v48    # "defaultMem":J
    .restart local v85    # "mDefaultMemory":Ljava/lang/String;
    .restart local v111    # "oldScreenTimOut":I
    .restart local v112    # "oldStayAwake":I
    .restart local v113    # "orgList":Ljava/lang/String;
    :cond_6e
    const/16 v76, 0x0

    goto/16 :goto_18

    .line 906
    .restart local v76    # "isSoundDetectorOn":Z
    :cond_6f
    const/16 v72, 0x0

    goto/16 :goto_19

    .line 952
    .restart local v14    # "SavedApplist":Ljava/lang/String;
    .restart local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v61    # "firstBoot":I
    .restart local v66    # "i":I
    .restart local v72    # "isDoorbellDetectorOn":Z
    .restart local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v118    # "pkgName":Ljava/lang/String;
    :cond_70
    :try_start_5
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "samsung.settings.reading_default_on"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 953
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode Added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v118

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "samsung.settings.reading_default_on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    move-object/from16 v0, v118

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 955
    const/4 v5, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 956
    .local v12, "Papp":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 957
    .local v83, "mAppinfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 958
    goto/16 :goto_1b

    .line 959
    .end local v12    # "Papp":Landroid/content/pm/PackageInfo;
    .end local v83    # "mAppinfo":Ljava/lang/String;
    :cond_71
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "samsung.settings.reading_default_on_addtolist"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 960
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode Added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v118

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "samsung.settings.reading_default_applist_on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    move-object/from16 v0, v118

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 962
    const/4 v5, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 963
    .restart local v12    # "Papp":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 964
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v14

    goto/16 :goto_1b

    .line 967
    .end local v12    # "Papp":Landroid/content/pm/PackageInfo;
    .end local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v118    # "pkgName":Ljava/lang/String;
    :catch_4
    move-exception v53

    .line 968
    .local v53, "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Can not find activity name"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 971
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 974
    new-instance v11, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOADABLE"

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 975
    .local v11, "LauncherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DOWNLOADABLE"

    invoke-virtual {v11, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const/16 v97, 0x0

    .line 977
    .local v97, "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v83, ""

    .line 978
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    const/16 v5, 0xa0

    move-object/from16 v0, v92

    invoke-virtual {v0, v11, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v97

    .line 979
    const/16 v66, 0x0

    :goto_1d
    invoke-interface/range {v97 .. v97}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_74

    .line 981
    :try_start_6
    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v102, v0

    .line 982
    .local v102, "metadata":Landroid/os/Bundle;
    const-string v5, "com.sec.ENABLE_DOWNLOADABLE_LIST"

    move-object/from16 v0, v102

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v83

    .line 979
    .end local v102    # "metadata":Landroid/os/Bundle;
    :cond_73
    :goto_1e
    add-int/lit8 v66, v66, 0x1

    goto :goto_1d

    .line 985
    :catch_5
    move-exception v53

    .line 986
    .restart local v53    # "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Can not read metadata"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 989
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_74
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preload_list"

    move-object/from16 v0, v83

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 992
    :try_start_7
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writeFontSize"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v40, Landroid/content/res/Configuration;

    invoke-direct/range {v40 .. v40}, Landroid/content/res/Configuration;-><init>()V

    .line 994
    .local v40, "curConfig":Landroid/content/res/Configuration;
    const v5, 0x3fae147b    # 1.36f

    move-object/from16 v0, v40

    iput v5, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 995
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1000
    .end local v40    # "curConfig":Landroid/content/res/Configuration;
    :cond_75
    :goto_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "boottime"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1004
    .end local v11    # "LauncherIntent":Landroid/content/Intent;
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v66    # "i":I
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_76
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1005
    .local v136, "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_7a

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1007
    .local v41, "currentLang":Ljava/lang/String;
    if-nez v41, :cond_77

    .line 1008
    const-string v41, ""

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1011
    .local v129, "setLanguage":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1013
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v64, "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1045
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_77
    :goto_20
    const-string v5, "SEC_FLOATING_FEATURE_COMMON_BLACKSCREEN_UI_QUICK_ACCESS"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1046
    const-string v5, "quick_application_access"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_7c

    const/16 v58, 0x1

    .line 1048
    .local v58, "enabled":Z
    :goto_21
    invoke-static/range {v58 .. v58}, Lcom/android/settings/Utils;->enableQuickApplicationAccess(Z)Z

    .line 1052
    .end local v58    # "enabled":Z
    :cond_78
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_79

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1054
    const-string v5, "dormant_disable_notifications"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7d

    const/16 v137, 0x1

    .line 1055
    .local v137, "value":Z
    :goto_22
    const-string v6, "dormant_disable_led_indicator"

    if-eqz v137, :cond_7e

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    .end local v137    # "value":Z
    :cond_79
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notuseteasymode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    const-string v6, "op_mode_switch"

    const/4 v7, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1060
    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    const-string v5, "op_mode_switch"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 996
    .end local v136    # "uspLevel":I
    .restart local v11    # "LauncherIntent":Landroid/content/Intent;
    .restart local v14    # "SavedApplist":Ljava/lang/String;
    .restart local v66    # "i":I
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    .restart local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_6
    move-exception v53

    .line 997
    .local v53, "e":Landroid/os/RemoteException;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Unable to save font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1017
    .end local v11    # "LauncherIntent":Landroid/content/Intent;
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v66    # "i":I
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v136    # "uspLevel":I
    :cond_7a
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1019
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1020
    :cond_7b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1021
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_77

    .line 1022
    const-string v129, "ja_JP"

    .line 1023
    .restart local v129    # "setLanguage":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1025
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 1046
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_7c
    const/16 v58, 0x0

    goto/16 :goto_21

    .line 1054
    :cond_7d
    const/16 v137, 0x0

    goto/16 :goto_22

    .line 1055
    .restart local v137    # "value":Z
    :cond_7e
    const/4 v5, 0x0

    goto/16 :goto_23

    .line 1063
    .end local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v26    # "audio_balance":I
    .end local v48    # "defaultMem":J
    .end local v61    # "firstBoot":I
    .end local v62    # "first_sim_brightness_flag":I
    .end local v72    # "isDoorbellDetectorOn":Z
    .end local v73    # "isOn":Z
    .end local v76    # "isSoundDetectorOn":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v85    # "mDefaultMemory":Ljava/lang/String;
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v111    # "oldScreenTimOut":I
    .end local v112    # "oldStayAwake":I
    .end local v113    # "orgList":Ljava/lang/String;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v136    # "uspLevel":I
    .end local v137    # "value":Z
    :cond_7f
    const-string v5, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1064
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v133

    .line 1065
    .restart local v133    # "state":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received dock event with state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v133

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string v5, "cradle_enable"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 1068
    .local v39, "cradleEnabled":I
    if-nez v133, :cond_82

    .line 1070
    const-string v5, "cradle_connect"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1071
    if-eqz v39, :cond_81

    .line 1072
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Cradle is enabled without dock"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v94, Landroid/content/Intent;

    invoke-direct/range {v94 .. v94}, Landroid/content/Intent;-><init>()V

    .line 1074
    .local v94, "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1075
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SmartDock connected, Do nothing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_24
    const-string v5, "state"

    const/4 v6, 0x0

    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    move-object/from16 v0, p1

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1082
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state changed to device (state: 0)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1077
    :cond_80
    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v94

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24

    .line 1084
    .end local v94    # "mSendIntent":Landroid/content/Intent;
    :cond_81
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cradle is disabled1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state is device"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1087
    :cond_82
    const/4 v5, 0x7

    move/from16 v0, v133

    if-eq v0, v5, :cond_5

    .line 1089
    const-string v5, "cradle_connect"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    if-eqz v39, :cond_84

    .line 1091
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Cradle is enabled with dock"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v94, Landroid/content/Intent;

    invoke-direct/range {v94 .. v94}, Landroid/content/Intent;-><init>()V

    .line 1093
    .restart local v94    # "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 1094
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SmartDock connected, Do nothing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_25
    const-string v5, "state"

    const/4 v6, 0x1

    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    move-object/from16 v0, p1

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1101
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state changed to line out (state: 1)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1096
    :cond_83
    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v94

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_25

    .line 1103
    .end local v94    # "mSendIntent":Landroid/content/Intent;
    :cond_84
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cradle is disabled2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state is device"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1109
    .end local v39    # "cradleEnabled":I
    .end local v133    # "state":I
    :cond_85
    const-string v5, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1110
    const-string v5, "persist.sys.roaming_menu"

    const-string v6, "roaming_menu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v5, "persist.sys.tether_data"

    const-string v6, "tether_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v5, "operators_carrierhomepage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1114
    .local v65, "homepage":Ljava/lang/String;
    const-string v5, "operators_brandalpha"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1115
    .local v33, "brandalpha":Ljava/lang/String;
    if-eqz v65, :cond_86

    const-string v5, "null"

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1116
    :cond_86
    const-string v5, "db_chameleon_carrierhomepage"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a17ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1121
    :goto_26
    if-eqz v33, :cond_87

    const-string v5, "null"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 1122
    :cond_87
    const-string v5, "db_chameleon_brandalpha"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a17ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1118
    :cond_88
    const-string v5, "db_chameleon_carrierhomepage"

    move-object/from16 v0, v125

    move-object/from16 v1, v65

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_26

    .line 1124
    :cond_89
    const-string v5, "db_chameleon_brandalpha"

    move-object/from16 v0, v125

    move-object/from16 v1, v33

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1126
    .end local v33    # "brandalpha":Ljava/lang/String;
    .end local v65    # "homepage":Ljava/lang/String;
    :cond_8a
    const-string v5, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 1129
    const-string v5, "max_brightness"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v90

    .line 1130
    .local v90, "mMaxBrightness":I
    const-string v5, "change_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    .line 1131
    .local v84, "mChangeType":I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1132
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1133
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_siop_brightness"

    move-object/from16 v0, v54

    move/from16 v1, v90

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1134
    const-string v5, "pref_siop_brightness_change_type"

    move-object/from16 v0, v54

    move/from16 v1, v84

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1136
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v84    # "mChangeType":I
    .end local v90    # "mMaxBrightness":I
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_8b
    const-string v5, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1137
    const-string v5, "change_alert"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    const-string v5, "samsung_signin"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1139
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 1140
    const-string v5, "remote_control"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1142
    :cond_8c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1143
    :cond_8d
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.montblanc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1146
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_8e

    .line 1147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1152
    :cond_8e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v128

    .line 1153
    .local v128, "selected_package":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1154
    .local v22, "app":Landroid/content/pm/PackageInfo;
    const/16 v82, 0x0

    .line 1156
    .local v82, "mApp":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x1

    :try_start_8
    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1157
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v82

    .line 1158
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    aget-object v17, v5, v6

    .line 1159
    .local v17, "act":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v82

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v35, v0

    .line 1160
    .local v35, "bundle":Landroid/os/Bundle;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v37, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v128

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .local v37, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1163
    .local v123, "readingApp":Ljava/lang/String;
    if-eqz v35, :cond_90

    .line 1164
    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v123

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 1165
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1166
    :cond_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    .line 1167
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readingApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v123

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1178
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v123    # "readingApp":Ljava/lang/String;
    :cond_90
    :goto_27
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1179
    const-string v5, "persist.sys.setupwizard"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 1180
    .local v130, "setupwizard":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v115

    .line 1182
    .local v115, "packageName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1183
    .local v30, "bKnoxInstall":Z
    const/16 v29, 0x0

    .line 1184
    .local v29, "bGearManagerInstall":Z
    const/16 v27, 0x0

    .line 1185
    .local v27, "bCarModeUpdate":Z
    const/16 v74, 0x0

    .line 1186
    .local v74, "isOwner":Z
    const-string v5, "com.sec.android.extra.PRELOADINSTALL"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v75

    .line 1187
    .local v75, "isPreinstall":Z
    if-eqz v115, :cond_92

    const-string v5, "com.sec.knox.knoxappsinstaller"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    const-string v5, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    const-string v5, "com.sec.knox.app.container"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    const-string v5, "sec_container_1"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1192
    :cond_91
    const/16 v30, 0x1

    .line 1195
    :cond_92
    if-eqz v115, :cond_93

    const-string v5, "com.sec.android.automotive.drivelink"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1196
    const/16 v27, 0x1

    .line 1198
    :cond_93
    if-eqz v115, :cond_95

    const-string v5, "com.samsung.accessory"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_94

    const-string v5, "com.sec.android.fotaprovider"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_94

    const-string v5, "com.samsung.android.gear2plugin"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 1202
    :cond_94
    const/16 v29, 0x1

    .line 1205
    :cond_95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_96

    .line 1206
    const/16 v74, 0x1

    .line 1209
    :cond_96
    if-nez v30, :cond_5

    if-nez v75, :cond_5

    const-string v5, "FINISH"

    move-object/from16 v0, v130

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v29, :cond_5

    if-nez v27, :cond_5

    if-eqz v74, :cond_5

    .line 1210
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1211
    .local v24, "args":Landroid/os/Bundle;
    const-string v5, "package"

    move-object/from16 v0, v24

    move-object/from16 v1, v115

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 1213
    .local v23, "appOpsintent":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$AppOpsDetailsActivity"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    const-string v5, ":settings:show_fragment"

    const-class v6, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v5, ":settings:show_fragment_args"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1218
    const-string v5, ":settings:show_fragment_title_resid"

    const v6, 0x7f0a0949

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    const-string v5, ":settings:show_fragment_title"

    const v6, 0x7f0a0949

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v5, ":settings:show_fragment_as_shortcut"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    const-string v5, "PACKAGE_ADDED"

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1222
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1172
    .end local v23    # "appOpsintent":Landroid/content/Intent;
    .end local v24    # "args":Landroid/os/Bundle;
    .end local v27    # "bCarModeUpdate":Z
    .end local v29    # "bGearManagerInstall":Z
    .end local v30    # "bKnoxInstall":Z
    .end local v74    # "isOwner":Z
    .end local v75    # "isPreinstall":Z
    .end local v115    # "packageName":Ljava/lang/String;
    .end local v130    # "setupwizard":Ljava/lang/String;
    :catch_7
    move-exception v53

    .line 1174
    .local v53, "e":Ljava/lang/Exception;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_27

    .line 1225
    .end local v22    # "app":Landroid/content/pm/PackageInfo;
    .end local v53    # "e":Ljava/lang/Exception;
    .end local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    .end local v128    # "selected_package":Ljava/lang/String;
    :cond_97
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v128

    .line 1228
    .restart local v128    # "selected_package":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1229
    .restart local v22    # "app":Landroid/content/pm/PackageInfo;
    const/16 v82, 0x0

    .line 1231
    .restart local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1232
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v82

    .line 1233
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    aget-object v17, v5, v6

    .line 1234
    .restart local v17    # "act":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v82

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v35, v0

    .line 1235
    .restart local v35    # "bundle":Landroid/os/Bundle;
    new-instance v37, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .restart local v37    # "cn":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v134

    .line 1237
    .restart local v134    # "temp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1238
    .restart local v123    # "readingApp":Ljava/lang/String;
    if-eqz v35, :cond_5

    .line 1239
    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 1240
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    const-string v5, "samsung.settings.reading_default_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1242
    :cond_98
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 1243
    const-string v5, ""

    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v123

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    .line 1259
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v134    # "temp":Ljava/lang/String;
    :catch_8
    move-exception v53

    .line 1261
    .restart local v53    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1246
    .end local v53    # "e":Ljava/lang/Exception;
    .restart local v17    # "act":Landroid/content/pm/ActivityInfo;
    .restart local v35    # "bundle":Landroid/os/Bundle;
    .restart local v37    # "cn":Landroid/content/ComponentName;
    .restart local v123    # "readingApp":Ljava/lang/String;
    .restart local v134    # "temp":Ljava/lang/String;
    :cond_99
    :try_start_a
    const-string v5, "com.google.android.apps.books.app.BooksActivity"

    move-object/from16 v0, v134

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1247
    const-string v5, ""

    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v123

    .line 1248
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1253
    :cond_9a
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9b

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1254
    :cond_9b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v134

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    .line 1255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 1264
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v22    # "app":Landroid/content/pm/PackageInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v128    # "selected_package":Ljava/lang/String;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_9c
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v45

    .line 1266
    .local v45, "data":Landroid/net/Uri;
    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v118

    .line 1268
    .restart local v118    # "pkgName":Ljava/lang/String;
    const-string v5, "com.sec.android.app.montblanc"

    move-object/from16 v0, v118

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_9d

    .line 1270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1275
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1276
    .restart local v123    # "readingApp":Ljava/lang/String;
    if-eqz v123, :cond_5

    .line 1277
    const-string v5, ";"

    move-object/from16 v0, v123

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v124

    .line 1278
    .local v124, "reading_val":[Ljava/lang/String;
    const-string v123, ""

    .line 1279
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_28
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_a2

    .line 1280
    aget-object v5, v124, v66

    const-string v6, "com.google.android.apps.books.app.BooksActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 1281
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 1282
    aget-object v5, v124, v66

    move-object/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 1283
    const-string v5, ""

    aput-object v5, v124, v66

    .line 1279
    :goto_29
    add-int/lit8 v66, v66, 0x1

    goto :goto_28

    .line 1285
    :cond_9e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1288
    :cond_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1291
    :cond_a0
    aget-object v5, v124, v66

    move-object/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1292
    const-string v5, ""

    aput-object v5, v124, v66

    goto :goto_29

    .line 1294
    :cond_a1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1298
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1348
    .end local v45    # "data":Landroid/net/Uri;
    .end local v66    # "i":I
    .end local v118    # "pkgName":Ljava/lang/String;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v124    # "reading_val":[Ljava/lang/String;
    :cond_a3
    const-string v5, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1349
    const-string v5, "device_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/admin/DevicePolicyManager;

    .line 1350
    .local v51, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v51, :cond_a4

    const/4 v5, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v100

    .line 1352
    .local v100, "maxTimeout":J
    :goto_2a
    const-string v5, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    .line 1355
    .local v71, "isDeviceLockTime":Z
    const-wide/16 v6, 0x1

    cmp-long v5, v100, v6

    if-gez v5, :cond_5

    .line 1356
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Max timeout is removed. Rollback timeout value"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v5, "screen_off_timeout"

    const-string v6, "screen_off_timeout_rollback"

    const/16 v7, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1359
    const-string v6, "lock_screen_lock_after_timeout"

    const-string v7, "lock_after_timeout_rollback"

    if-eqz v71, :cond_a5

    const v5, 0x927c0

    :goto_2b
    move-object/from16 v0, v125

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1350
    .end local v71    # "isDeviceLockTime":Z
    .end local v100    # "maxTimeout":J
    :cond_a4
    const-wide/16 v100, 0x0

    goto :goto_2a

    .line 1359
    .restart local v71    # "isDeviceLockTime":Z
    .restart local v100    # "maxTimeout":J
    :cond_a5
    const/16 v5, 0x1388

    goto :goto_2b

    .line 1364
    .end local v51    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v71    # "isDeviceLockTime":Z
    .end local v100    # "maxTimeout":J
    :cond_a6
    const-string v5, "android.settings.ACTIVE_KEY_CLEAR"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1365
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1366
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1367
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_active_key_noti"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1368
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1371
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/app/NotificationManager;

    .line 1372
    .local v107, "nm":Landroid/app/NotificationManager;
    const v5, 0x7f0205b5

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1374
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v107    # "nm":Landroid/app/NotificationManager;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_a7
    const-string v5, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1375
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1376
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1377
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_security_warning"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1378
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1381
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/app/NotificationManager;

    .line 1382
    .restart local v107    # "nm":Landroid/app/NotificationManager;
    const v5, 0x7f0205ba

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1383
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v107    # "nm":Landroid/app/NotificationManager;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_a8
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 1385
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 1387
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 1389
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1390
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "LOCALE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1398
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v46

    .line 1399
    .local v46, "dateFormats":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "regional"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a9

    .line 1400
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1401
    .local v4, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    aget-object v6, v46, v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v63

    .line 1404
    .local v63, "formatted":Ljava/lang/String;
    const/4 v15, -0x1

    .line 1405
    .local v15, "SetDate":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->SetRegionalDate_Update()I

    move-result v15

    .line 1406
    aget-object v63, v46, v15

    .line 1407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    move-object/from16 v0, v63

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1410
    .end local v4    # "dummydate_for_dateformat":Ljava/util/Calendar;
    .end local v15    # "SetDate":I
    .end local v63    # "formatted":Ljava/lang/String;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1411
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_ab

    .line 1412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    .line 1413
    .local v122, "provision":I
    if-nez v122, :cond_ab

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1415
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_aa

    .line 1416
    const-string v41, ""

    .line 1418
    :cond_aa
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1419
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 1420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1421
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1423
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1429
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v122    # "provision":I
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_ab
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ad

    const/16 v76, 0x1

    .line 1430
    .restart local v76    # "isSoundDetectorOn":Z
    :goto_2d
    if-eqz v76, :cond_ac

    .line 1431
    const v13, 0xd2158

    .line 1432
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 1436
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 1437
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1439
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 1442
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isBabyCryingEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1444
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205b3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b21

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 1451
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0b1d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0b21

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1453
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1455
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_ac
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1394
    .end local v46    # "dateFormats":[Ljava/lang/String;
    .end local v76    # "isSoundDetectorOn":Z
    .end local v136    # "uspLevel":I
    :catch_9
    move-exception v53

    .line 1395
    .restart local v53    # "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, " Error changing font size for myprofile"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 1429
    .end local v53    # "e":Ljava/lang/Exception;
    .restart local v46    # "dateFormats":[Ljava/lang/String;
    .restart local v136    # "uspLevel":I
    :cond_ad
    const/16 v76, 0x0

    goto/16 :goto_2d

    .line 1457
    .end local v46    # "dateFormats":[Ljava/lang/String;
    .end local v136    # "uspLevel":I
    :cond_ae
    const-string v5, "SamsungIME.UpdateSelectedLanguageAction"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1458
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : SamsungIME.UpdateSelectedLanguageAction"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1460
    .restart local v136    # "uspLevel":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1462
    .local v69, "inputMethodId":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_5

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v132

    .line 1464
    .local v132, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_current_handwriting_lang_llist"

    const-string v6, ""

    move-object/from16 v0, v132

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 1465
    .local v121, "prefLangList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1466
    .local v68, "imLanguageList":Ljava/lang/String;
    if-eqz v121, :cond_af

    move-object/from16 v0, v121

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1470
    :cond_af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1471
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_b0

    .line 1472
    const-string v41, ""

    .line 1474
    :cond_b0
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1475
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1477
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v79

    .line 1482
    .local v79, "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_2e
    move-object/from16 v0, v79

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_b1

    .line 1483
    if-eqz v129, :cond_b2

    .line 1484
    aget-object v5, v79, v66

    if-eqz v5, :cond_b2

    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v129

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1485
    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v129

    .line 1490
    :cond_b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1c20

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v129, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1482
    :cond_b2
    add-int/lit8 v66, v66, 0x1

    goto :goto_2e

    .line 1493
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v68    # "imLanguageList":Ljava/lang/String;
    .end local v69    # "inputMethodId":Ljava/lang/String;
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v121    # "prefLangList":Ljava/lang/String;
    .end local v129    # "setLanguage":Ljava/lang/String;
    .end local v132    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v136    # "uspLevel":I
    :cond_b3
    const-string v5, "android.intent.action.INPUT_METHOD_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1494
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : android.intent.action.INPUT_METHOD_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1496
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_b9

    .line 1497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1498
    .restart local v69    # "inputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1499
    .restart local v41    # "currentLang":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1500
    .local v28, "bCheckKeepCurLang":Z
    if-eqz v41, :cond_14

    .line 1502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1504
    .restart local v68    # "imLanguageList":Ljava/lang/String;
    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1506
    if-eqz v68, :cond_b5

    move-object/from16 v0, v68

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 1507
    const/16 v28, 0x1

    .line 1519
    :goto_2f
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language current Language keep state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    if-nez v28, :cond_5

    .line 1522
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1523
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1525
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v79

    .line 1529
    .restart local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_30
    move-object/from16 v0, v79

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_b4

    .line 1530
    if-eqz v129, :cond_b8

    .line 1531
    aget-object v5, v79, v66

    if-eqz v5, :cond_b8

    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v129

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1532
    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v129

    .line 1537
    :cond_b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1c20

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v129, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1509
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_b5
    const/16 v28, 0x0

    goto/16 :goto_2f

    .line 1512
    :cond_b6
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 1513
    const/16 v28, 0x1

    goto/16 :goto_2f

    .line 1515
    :cond_b7
    const/16 v28, 0x0

    goto/16 :goto_2f

    .line 1529
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    .restart local v66    # "i":I
    .restart local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .restart local v129    # "setLanguage":Ljava/lang/String;
    :cond_b8
    add-int/lit8 v66, v66, 0x1

    goto :goto_30

    .line 1540
    .end local v28    # "bCheckKeepCurLang":Z
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v68    # "imLanguageList":Ljava/lang/String;
    .end local v69    # "inputMethodId":Ljava/lang/String;
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_b9
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1542
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1543
    :cond_ba
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1544
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_5

    .line 1545
    const-string v41, "ja_JP"

    .line 1546
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v41

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1548
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1554
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v136    # "uspLevel":I
    :cond_bb
    const-string v5, "SamsungIME.UpdateAvailableLanguageAction"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1555
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : SamsungIME.UpdateAvailableLanguageAction"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1557
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_bc

    .line 1558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    .line 1559
    .restart local v122    # "provision":I
    if-nez v122, :cond_5

    .line 1560
    const-string v41, ""

    .line 1561
    .restart local v41    # "currentLang":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1562
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1564
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1569
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v122    # "provision":I
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_bc
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1571
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    const-string v5, "JS01"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1572
    :cond_bd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1573
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_5

    .line 1574
    const-string v41, "ja_JP"

    .line 1575
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v41

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1577
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1593
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v136    # "uspLevel":I
    .restart local v31    # "bLanCableState":Z
    .restart local v105    # "nEthState":I
    :cond_be
    const/4 v5, 0x2

    move/from16 v0, v105

    if-ne v0, v5, :cond_6

    if-eqz v31, :cond_6

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a1a1f

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1630
    .end local v31    # "bLanCableState":Z
    .end local v105    # "nEthState":I
    :cond_bf
    const/16 v73, 0x0

    goto/16 :goto_3

    .line 1638
    .restart local v73    # "isOn":Z
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_c0
    const-string v5, "smart_network"

    const/4 v6, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1659
    .end local v73    # "isOn":Z
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v98    # "mUsbConnected":Z
    .restart local v120    # "pref":Landroid/content/SharedPreferences;
    :cond_c1
    const/16 v135, 0x0

    goto/16 :goto_5

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
