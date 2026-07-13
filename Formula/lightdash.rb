class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3365.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.1/lightdash-cli-0.3365.1-macos-arm64.tar.gz"
      sha256 "a13efa2ab24439fadd4e602baba78ba469bea05ec619e90a0d76561fbb4b0848"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.1/lightdash-cli-0.3365.1-macos-x64.tar.gz"
      sha256 "07a50b4a54d063b9f16ce2c0e091372eebd5f888fb4dceb4ded2560588a63d6d"
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
