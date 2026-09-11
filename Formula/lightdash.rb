class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.6/lightdash-cli-2.198.6-macos-arm64.tar.gz"
      sha256 "b19c376594df4a29282ffe4615e2d66b79f32b700a8c458dadfb6110901e7c44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.6/lightdash-cli-2.198.6-macos-x64.tar.gz"
      sha256 "40921bb348fd10e76462e16bd7452662616cb5119e86ce6835d134ea0f7cf278"
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
