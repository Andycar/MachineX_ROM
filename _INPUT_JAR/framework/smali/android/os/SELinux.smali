.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SELinux.java"


# static fields
.field private static final SELINUX_ANDROID_RESTORECON_DATADATA:I = 0x10

.field private static final SELINUX_ANDROID_RESTORECON_FORCE:I = 0x8

.field private static final SELINUX_ANDROID_RESTORECON_NOCHANGE:I = 0x1

.field private static final SELINUX_ANDROID_RESTORECON_RECURSE:I = 0x4

.field private static final SELINUX_ANDROID_RESTORECON_VERBOSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SELinux"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    const-string v0, "android_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native compareHashValue(I)Z
.end method

.method public static final native getBooleanNames()[Ljava/lang/String;
.end method

.method public static final native getBooleanValue(Ljava/lang/String;)Z
.end method

.method public static final native getContext()Ljava/lang/String;
.end method

.method public static getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "uid"    # I
    .param p1, "seinfo"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "isSystemServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p2, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 346
    :cond_a
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "uid"    # I
    .param p1, "seinfo"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "isSystemServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p2, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 361
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native getPidContext(I)Ljava/lang/String;
.end method

.method public static final native getSEAndroidVersion()Ljava/lang/String;
.end method

.method public static final native getSEPolicyBuildDate()Ljava/lang/String;
.end method

.method public static final native getSEPolicyVersion()Ljava/lang/String;
.end method

.method private static final native getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method public static final native isSELinuxEnabled()Z
.end method

.method public static final native isSELinuxEnforced()Z
.end method

.method private static native native_recursive_restorecon_with_category(Ljava/lang/String;I)Z
.end method

.method private static native native_restorecon(Ljava/lang/String;I)Z
.end method

.method private static native native_setfilecon_with_category(Ljava/lang/String;I)Z
.end method

.method public static restorecon(Ljava/io/File;)Z
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 250
    :goto_a
    return v1

    .line 247
    :catch_b
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SELinux"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public static restorecon(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static restoreconRecursive(Ljava/io/File;)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    .line 269
    :goto_9
    return v1

    .line 266
    :catch_a
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SELinux"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static restorecon_with_category(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "userid"    # I

    .prologue
    .line 287
    invoke-static {p0, p1}, Landroid/os/SELinux;->native_recursive_restorecon_with_category(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final native setBooleanValue(Ljava/lang/String;Z)Z
.end method

.method public static final native setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native setSELinuxEnforce(Z)Z
.end method

.method public static setfilecon_with_category(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "userid"    # I

    .prologue
    .line 317
    invoke-static {p0, p1}, Landroid/os/SELinux;->native_setfilecon_with_category(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static native verifySignature()Z
.end method
