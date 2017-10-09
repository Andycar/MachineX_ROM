.class Lcom/android/server/pm/GeneratePackageInfoHook$FakeSignatureGlobalUI;
.super Ljava/lang/Object;
.source "GeneratePackageInfoHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/GeneratePackageInfoHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FakeSignatureGlobalUI"
.end annotation


# static fields
.field static final SECURE_SETTING:Ljava/lang/String; = "allow_fake_signature_global"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
