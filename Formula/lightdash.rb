class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3079.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3079.0/lightdash-cli-0.3079.0-macos-arm64.tar.gz"
      sha256 "a50b3dc45a6a8d69c7bf0ea79bcef433847074c88bcb459f1915bfea6bf82484"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3079.0/lightdash-cli-0.3079.0-macos-x64.tar.gz"
      sha256 "849258220f828f11b64a00bcf4c5d20d6f974371f74ccd8c941f8f55ccb547b5"
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
