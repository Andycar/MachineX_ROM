.class final Landroid/app/BluetoothSecureManagerService$WhiteListValue;
.super Ljava/lang/Object;
.source "BluetoothSecureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BluetoothSecureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WhiteListValue"
.end annotation


# instance fields
.field cod:I

.field name:Ljava/lang/String;

.field uuids:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/BluetoothSecureManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/app/BluetoothSecureManagerService$1;

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService$WhiteListValue;-><init>()V

    return-void
.end method
