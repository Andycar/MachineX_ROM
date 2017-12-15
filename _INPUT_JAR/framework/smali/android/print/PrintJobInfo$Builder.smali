.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1, "prototype"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    if-eqz p1, :cond_d

    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    :goto_a
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    .line 684
    return-void

    .line 681
    :cond_d
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 733
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    .line 734
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 736
    :cond_12
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    .line 721
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 723
    :cond_12
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # getter for: Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 701
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    .line 702
    return-void
.end method

.method public setCopies(I)V
    .registers 3
    .param p1, "copies"    # I

    .prologue
    .line 692
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mCopies:I
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$002(Landroid/print/PrintJobInfo;I)I

    .line 693
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .registers 3
    .param p1, "pages"    # [Landroid/print/PageRange;

    .prologue
    .line 710
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    # setter for: Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    .line 711
    return-void
.end method
