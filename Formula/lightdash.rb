class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.133.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.1/lightdash-cli-2.133.1-macos-arm64.tar.gz"
      sha256 "47527083953a7750cc3c2940d66bcfb358931994c7ed7e19c331172336300df5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.1/lightdash-cli-2.133.1-macos-x64.tar.gz"
      sha256 "583eb1d567a3c0993cc7e2ebce496e41838078a1953f95da2f1c076dc0c3a22b"
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
