class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2888.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2888.1/lightdash-cli-0.2888.1-macos-arm64.tar.gz"
      sha256 "1d042b306a62d28c6fc27125126f1a62b284fde6463d6014a19e31b775278b4c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2888.1/lightdash-cli-0.2888.1-macos-x64.tar.gz"
      sha256 "4fb91d72846c69b8f9e52a5f179fdcdf71a15ad1bc177551d59d090645137262"
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
