.class Landroid/content/pm/ParceledListSlice$1;
.super Landroid/os/Binder;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/ParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/pm/ParceledListSlice;ILjava/lang/Class;I)V
    .registers 5

    .prologue
    .line 164
    .local p0, "this":Landroid/content/pm/ParceledListSlice$1;, "Landroid/content/pm/ParceledListSlice.1;"
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    iput p2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/pm/ParceledListSlice$1;, "Landroid/content/pm/ParceledListSlice.1;"
    const/4 v2, 0x1

    .line 168
    if-eq p1, v2, :cond_8

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 187
    :cond_7
    :goto_7
    return v2

    .line 171
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, "i":I
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v3

    if-eqz v3, :cond_38

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing more @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_38
    :goto_38
    iget v3, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge v0, v3, :cond_98

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/high16 v4, 0x40000

    if-ge v3, v4, :cond_98

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v3, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    # getter for: Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v3}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 177
    .local v1, "parcelable":Landroid/os/Parcelable;, "TT;"
    iget-object v3, p0, Landroid/content/pm/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    # invokes: Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    invoke-static {v3, v4}, Landroid/content/pm/ParceledListSlice;->access$300(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 178
    iget v3, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-interface {v1, p3, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v3

    if-eqz v3, :cond_95

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote extra #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    # getter for: Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v5}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_95
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_38

    .line 183
    .end local v1    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_98
    iget v3, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge v0, v3, :cond_7

    .line 184
    # getter for: Landroid/content/pm/ParceledListSlice;->DEBUG:Z
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result v3

    if-eqz v3, :cond_c8

    # getter for: Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Breaking @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_c8
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7
.end method
