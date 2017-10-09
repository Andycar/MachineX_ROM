.class Lcom/android/server/pm/GeneratePackageInfoHook$FakeSignatureCore;
.super Ljava/lang/Object;
.source "GeneratePackageInfoHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/GeneratePackageInfoHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FakeSignatureCore"
.end annotation


# static fields
.field static final METADATA:Ljava/lang/String; = "fake-signature"

.field static final PERMISSION:Ljava/lang/String; = "android.permission.FAKE_PACKAGE_SIGNATURE"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
