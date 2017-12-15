.class public Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public baseIntent:Landroid/content/Intent;

.field public id:I

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    return-void
.end method
