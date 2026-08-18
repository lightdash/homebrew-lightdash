class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.191.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.1/lightdash-cli-1.191.1-macos-arm64.tar.gz"
      sha256 "4b3d2ba3d6f417949e96ccc1f1c05cfa70b6f288ac41ac734e6d63bb3ba47abc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.1/lightdash-cli-1.191.1-macos-x64.tar.gz"
      sha256 "675437e619a669e72881f4f9db26efba160536908ffd6d85fdfffda6ef1f197f"
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
