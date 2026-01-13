class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.0/lightdash-cli-0.2331.0-macos-arm64.tar.gz"
      sha256 "475d4e265bae4c7026448c51c70df57d7cfa01a8efed64944537a142ffa6f84f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.0/lightdash-cli-0.2331.0-macos-x64.tar.gz"
      sha256 "137d5e1bd92ce3d0557af9fd9338ddbbae924cac7481ed9f6c3952a25583f1e6"
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
