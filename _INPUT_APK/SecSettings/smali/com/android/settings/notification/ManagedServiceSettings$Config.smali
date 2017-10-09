.class public Lcom/android/settings/notification/ManagedServiceSettings$Config;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Config"
.end annotation


# instance fields
.field emptyText:I

.field intentAction:Ljava/lang/String;

.field noun:Ljava/lang/String;

.field permission:Ljava/lang/String;

.field setting:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field warningDialogSummary:I

.field warningDialogTitle:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
