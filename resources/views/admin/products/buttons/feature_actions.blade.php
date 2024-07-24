    <div class="row gy-4" id="feature-div-{{$feature->id}}">
        <div class="col-sm-3">
            <div class="form-group">
                <label class="form-label" for="default-06">الميزة عربي</label>
                <div class="form-control-wrap">
                    <input type="text" class="form-control" value="{{$feature->name_ar}}" readonly>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label class="form-label" for="default-06">الميزة إنجليزي</label>
                <div class="form-control-wrap">
                    <input type="text" class="form-control" value="{{$feature->name_en}}" readonly>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label class="form-label" for="default-06">الميزة أوردو</label>
                <div class="form-control-wrap">
                    <input type="text" class="form-control" value="{{$feature->name_urdu}}" readonly>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label class="form-label" for="default-06">&nbsp;</label>
                <div class="form-control-wrap">
                    <a href="#" data-toggle="modal" data-target="#delete_feature_record" onclick="$('#feature_delete_form').attr('action', '{{route(request()->segment('1').'.products.features.destroy', $feature->id)}}');" class="text-danger"><em class="icon ni ni-trash-alt"></em></a>
                </div>
            </div>
        </div>
    </div>
