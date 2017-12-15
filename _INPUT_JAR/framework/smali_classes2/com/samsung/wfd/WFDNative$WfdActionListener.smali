.class public interface abstract Lcom/samsung/wfd/WFDNative$WfdActionListener;
.super Ljava/lang/Object;
.source "WFDNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WfdActionListener"
.end annotation


# virtual methods
.method public abstract notify(Landroid/os/Bundle;I)V
.end method

.method public abstract notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V
.end method

.method public abstract sinkResponse(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V
.end method
