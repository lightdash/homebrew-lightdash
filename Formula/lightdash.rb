class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.60.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.60.1/lightdash-cli-2.60.1-macos-arm64.tar.gz"
      sha256 "17d600f6232f23af2fe89d8c874ee8022673a1281a211396cafd296c4bb1a5cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.60.1/lightdash-cli-2.60.1-macos-x64.tar.gz"
      sha256 "87f10a585fa7090862686e42fb732b4a685512665013a7f8408502b490193c2a"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
