class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3398.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3398.1/lightdash-cli-0.3398.1-macos-arm64.tar.gz"
      sha256 "52df314b3d6082f84ce2dba6e4298904ce2ebc703de7dc181f8a1f04651ce4ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3398.1/lightdash-cli-0.3398.1-macos-x64.tar.gz"
      sha256 "cbb08f48bff8bb42ab4cc90be19796c9acf42e075243edb89b5790a031e420a8"
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
