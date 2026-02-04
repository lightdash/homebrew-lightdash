class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2419.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2419.0/lightdash-cli-0.2419.0-macos-arm64.tar.gz"
      sha256 "49daac85e916fb68c88cc3d70dc2a09f5c8d63fe25be893ebdaa8eb6414d4d97"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2419.0/lightdash-cli-0.2419.0-macos-x64.tar.gz"
      sha256 "4f37cf0e42a15960223eccd149dd9acd21812ebe73638b0216380ffbb26efc8f"
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
