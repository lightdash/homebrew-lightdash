class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2759.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.3/lightdash-cli-0.2759.3-macos-arm64.tar.gz"
      sha256 "26900ba741f31d75ed806145220a50406a9c0d635b1d78c8f745508230f7f8b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.3/lightdash-cli-0.2759.3-macos-x64.tar.gz"
      sha256 "e60f861ae2e5594cf54c32c97ce95d21988b9bcfbd74747936a16a555f9a2d83"
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
