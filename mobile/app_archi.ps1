# Définir le répertoire de base
$baseDir = "lib"

# Créer la structure de répertoires
$directories = @(
    "core/error",
    "core/usecases",
    "core/utils",
    "features/restaurant/data/datasources",
    "features/restaurant/data/models",
    "features/restaurant/data/repositories",
    "features/restaurant/domain/entities",
    "features/restaurant/domain/repositories",
    "features/restaurant/domain/usecases",
    "features/restaurant/presentation/bloc",
    "features/restaurant/presentation/pages",
    "features/restaurant/presentation/widgets"
)

foreach ($dir in $directories) {
    New-Item -ItemType Directory -Path (Join-Path -Path $baseDir -ChildPath $dir) -Force
}

# Créer les fichiers nécessaires
$files = @(
    "core/error/failure.dart",
    "core/usecases/usecase.dart",
    "core/utils/constants.dart",
    "features/restaurant/data/datasources/restaurant_remote_data_source.dart",
    "features/restaurant/data/datasources/comment_remote_data_source.dart",
    "features/restaurant/data/datasources/cuisine_type_remote_data_source.dart",
    "features/restaurant/data/datasources/opening_hours_remote_data_source.dart",
    "features/restaurant/data/datasources/favorite_restaurant_remote_data_source.dart",
    "features/restaurant/data/models/restaurant_model.dart",
    "features/restaurant/data/models/comment_model.dart",
    "features/restaurant/data/models/cuisine_type_model.dart",
    "features/restaurant/data/models/opening_hour_model.dart",
    "features/restaurant/data/models/favorite_restaurant_model.dart",
    "features/restaurant/data/repositories/restaurant_repository_impl.dart",
    "features/restaurant/data/repositories/comment_repository_impl.dart",
    "features/restaurant/data/repositories/cuisine_type_repository_impl.dart",
    "features/restaurant/data/repositories/opening_hour_repository_impl.dart",
    "features/restaurant/data/repositories/favorite_restaurant_repository_impl.dart",
    "features/restaurant/domain/entities/restaurant.dart",
    "features/restaurant/domain/entities/comment.dart",
    "features/restaurant/domain/entities/cuisine_type.dart",
    "features/restaurant/domain/entities/opening_hour.dart",
    "features/restaurant/domain/entities/favorite_restaurant.dart",
    "features/restaurant/domain/repositories/restaurant_repository.dart",
    "features/restaurant/domain/repositories/comment_repository.dart",
    "features/restaurant/domain/repositories/cuisine_type_repository.dart",
    "features/restaurant/domain/repositories/opening_hour_repository.dart",
    "features/restaurant/domain/repositories/favorite_restaurant_repository.dart",
    "features/restaurant/domain/usecases/get_all_restaurants.dart",
    "features/restaurant/domain/usecases/get_comments_for_restaurant.dart",
    "features/restaurant/domain/usecases/get_cuisine_types.dart",
    "features/restaurant/domain/usecases/get_opening_hours.dart",
    "features/restaurant/domain/usecases/get_favorite_restaurants.dart",
    "features/restaurant/domain/usecases/add_comment.dart",
    "features/restaurant/domain/usecases/add_favorite_restaurant.dart",
    "features/restaurant/domain/usecases/check_availability.dart",
    "features/restaurant/presentation/bloc/restaurant_bloc.dart",
    "features/restaurant/presentation/bloc/restaurant_event.dart",
    "features/restaurant/presentation/bloc/restaurant_state.dart",
    "features/restaurant/presentation/bloc/comment_bloc.dart",
    "features/restaurant/presentation/bloc/comment_event.dart",
    "features/restaurant/presentation/bloc/comment_state.dart",
    "features/restaurant/presentation/bloc/cuisine_type_bloc.dart",
    "features/restaurant/presentation/bloc/cuisine_type_event.dart",
    "features/restaurant/presentation/bloc/cuisine_type_state.dart",
    "features/restaurant/presentation/bloc/opening_hour_bloc.dart",
    "features/restaurant/presentation/bloc/opening_hour_event.dart",
    "features/restaurant/presentation/bloc/opening_hour_state.dart",
    "features/restaurant/presentation/bloc/favorite_restaurant_bloc.dart",
    "features/restaurant/presentation/bloc/favorite_restaurant_event.dart",
    "features/restaurant/presentation/bloc/favorite_restaurant_state.dart",
    "features/restaurant/presentation/pages/restaurant_page.dart",
    "features/restaurant/presentation/pages/restaurant_detail_page.dart",
    "features/restaurant/presentation/pages/comment_page.dart",
    "features/restaurant/presentation/pages/cuisine_type_page.dart",
    "features/restaurant/presentation/pages/opening_hour_page.dart",
    "features/restaurant/presentation/pages/favorite_restaurant_page.dart",
    "features/restaurant/presentation/pages/home_page.dart",
    "features/restaurant/presentation/widgets/restaurant_list_item.dart",
    "features/restaurant/presentation/widgets/comment_list_item.dart",
    "features/restaurant/presentation/widgets/cuisine_type_list_item.dart",
    "features/restaurant/presentation/widgets/opening_hour_list_item.dart",
    "features/restaurant/presentation/widgets/favorite_restaurant_list_item.dart",
    "features/restaurant/presentation/widgets/home_widgets.dart",
    "main.dart"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path (Join-Path -Path $baseDir -ChildPath $file) -Force
}
