.class final Lcom/android/server/input/InputManagerService$ControlWakeKey;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlWakeKey"
.end annotation


# instance fields
.field private final WAKEKEY_TAG:Ljava/lang/String;

.field private mDefaultWakeKey:Ljava/lang/String;

.field private mWakeKeyFileName:Ljava/lang/String;

.field private mWakeKeyFilePath:Ljava/lang/String;

.field private mWakeKeyRefCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mfosWakeKey:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2721
    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 2722
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 2723
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    .line 2724
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 2726
    const-string v2, "WAKEKEY"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->WAKEKEY_TAG:Ljava/lang/String;

    .line 2729
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 2730
    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 2732
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2733
    .local v1, "platform":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "buildcarrier":Ljava/lang/String;
    const-string v2, "msm7k"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "msm7627a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2737
    :cond_3e
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 2738
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 2747
    :cond_46
    :goto_46
    if-eqz v0, :cond_60

    .line 2748
    const-string v2, "ks023g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "ks02lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2749
    :cond_58
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 2750
    const-string v2, "116"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 2754
    :cond_60
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    .line 2755
    const-string v2, "WAKEKEY"

    const-string v3, "makeWakeKeyRefCount in constructor returns false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :goto_70
    return-void

    .line 2739
    :cond_71
    const-string v2, "montblanc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2740
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 2741
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_46

    .line 2742
    :cond_82
    const-string v2, "msm8960"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2743
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 2744
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_46

    .line 2758
    :cond_93
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_70
.end method

.method private makeWakeKeyRefCount(ZLjava/lang/String;)Z
    .registers 13
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 2781
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2783
    .local v6, "splitted_keycodes":[Ljava/lang/String;
    if-eqz p1, :cond_59

    .line 2784
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_b7

    aget-object v5, v0, v2

    .line 2785
    .local v5, "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2787
    .local v3, "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2788
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 2792
    .local v1, "count":I
    :goto_29
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is increased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2790
    .end local v1    # "count":I
    :cond_57
    const/4 v1, 0x1

    .restart local v1    # "count":I
    goto :goto_29

    .line 2796
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i$":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_59
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5c
    if-ge v2, v4, :cond_b7

    aget-object v5, v0, v2

    .line 2797
    .restart local v5    # "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2798
    .restart local v3    # "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 2799
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 2800
    .restart local v1    # "count":I
    if-gtz v1, :cond_8b

    .line 2801
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    const-string v7, "WAKEKEY"

    const-string v8, "keycode is removed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v1    # "count":I
    :cond_88
    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 2804
    .restart local v1    # "count":I
    :cond_8b
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is decreased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 2810
    .end local v1    # "count":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_b7
    const/4 v7, 0x1

    return v7
.end method

.method private makeWakeKeyString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 2814
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2815
    .local v1, "buff":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_60

    .line 2816
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2817
    .local v4, "keycodes":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2818
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_21
    if-ge v2, v5, :cond_31

    aget-object v3, v0, v2

    .line 2819
    .local v3, "keycode":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2818
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2821
    .end local v3    # "keycode":Ljava/lang/String;
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2822
    const-string v6, "WAKEKEY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keycodes in makeWakeKeyString is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "keycodes":[Ljava/lang/String;
    .end local v5    # "len$":I
    :goto_56
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 2824
    :cond_60
    const-string v6, "WAKEKEY"

    const-string v7, "mWakeKeyRefCount is empty"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method private writeWakeKeyString(Ljava/lang/String;)V
    .registers 6
    .param p1, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 2831
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2832
    .local v1, "wakekeyfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2834
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2835
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile is created"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_61

    .line 2843
    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 2844
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_39} :catch_6e

    .line 2851
    :goto_39
    :try_start_39
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4d

    .line 2852
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2853
    const-string v2, "WAKEKEY"

    const-string v3, "mfosWakeKey writing is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4d} :catch_7a

    .line 2862
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_60

    .line 2863
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2864
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 2865
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_60} :catch_86

    .line 2871
    :cond_60
    :goto_60
    return-void

    .line 2836
    :catch_61
    move-exception v0

    .line 2837
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile.createNewFile() is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 2845
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v0

    .line 2846
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_39

    .line 2855
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7a
    move-exception v0

    .line 2856
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string v3, "mfosWakeKey writing is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 2867
    .end local v0    # "e":Ljava/io/IOException;
    :catch_86
    move-exception v0

    .line 2868
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60
.end method


# virtual methods
.method public setWakeKeyDynamically(ZLjava/lang/String;)V
    .registers 6
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 2762
    const-string v0, "WAKEKEY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input keycodes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2765
    const-string v1, "WAKEKEY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycodes in setWakeKeyDynamically is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_46

    const-string/jumbo v0, "null"

    :goto_3a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :goto_45
    return-void

    .line 2765
    :cond_46
    const-string v0, "empty"

    goto :goto_3a

    .line 2769
    :cond_49
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2770
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    .line 2773
    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 2774
    const-string v0, "WAKEKEY"

    const-string v1, "makeWakeKeyRefCount in setWakeKeyDynamically returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2777
    :cond_65
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_45
.end method
