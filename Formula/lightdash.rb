class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2767.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2767.0/lightdash-cli-0.2767.0-macos-arm64.tar.gz"
      sha256 "1c150b96077cf9beca560e9dca57a3462e98997c7cd8f819da10974cbc95d1e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2767.0/lightdash-cli-0.2767.0-macos-x64.tar.gz"
      sha256 "1e91323d271edcb88e6e67e0f5639bcb55220e46cb3f2c6a92c8f8ab1458477e"
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
