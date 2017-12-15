.class Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;
.super Ljava/lang/Object;
.source "ExerciseImpl.java"

# interfaces
.implements Landroid/location/ExerciseLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    .registers 14
    .param p1, "timestamp"    # [J
    .param p2, "latitude"    # [D
    .param p3, "longitude"    # [D
    .param p4, "altitude"    # [F
    .param p5, "pressure"    # [F
    .param p6, "speed"    # [F
    .param p7, "pedoDistance"    # [D
    .param p8, "pedoSpeed"    # [D
    .param p9, "pedoStepCount"    # [J
    .param p10, "numOfBatch"    # I

    .prologue
    .line 143
    const-string v1, "SContext.MiscProvider.ExerciseImpl"

    const-string/jumbo v2, "onLocationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "context":Landroid/os/Bundle;
    const-string v1, "TimeStampArray"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 146
    const-string v1, "LatitudeArray"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 147
    const-string v1, "LongitudeArray"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 148
    const-string v1, "AltitudeArray"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 149
    const-string v1, "PressureArray"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 150
    const-string v1, "SpeedArray"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 151
    const-string v1, "PedoDistanceDiffArray"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 152
    const-string v1, "PedoSpeedArray"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 153
    const-string v1, "StepCountDiffArray"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 154
    const-string v1, "DataCount"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v1}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->access$000(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v1

    const/16 v2, 0x26

    invoke-interface {v1, v2, v0}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 156
    return-void
.end method
