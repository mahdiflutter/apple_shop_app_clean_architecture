import 'package:dartz/dartz.dart';
import 'package:store_app_clean_architecture/core/utils/errors/custom_error.dart';
import 'package:store_app_clean_architecture/features/store_feature/domain/entity/gallery_image_entity.dart';
import 'package:store_app_clean_architecture/features/store_feature/domain/repository/remote/gallery_product_repository_impl.dart';

class GalleryImagesUsecase {
  final GalleryProductRepositoryImpl _repository;
  GalleryImagesUsecase({required GalleryProductRepositoryImpl repository})
      : _repository = repository;

  Future<Either<CustomError, List<GalleryImageEntity>>> call(
      {required String productId}) async {
    return await _repository.getAllImages(
      productId: productId,
    );
  }
}
