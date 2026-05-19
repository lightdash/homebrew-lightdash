class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2978.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2978.0/lightdash-cli-0.2978.0-macos-arm64.tar.gz"
      sha256 "77d8ccc6bce20dba6102dafa8c0c82a326efe342c4d3d4ef79e09958b9f337f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2978.0/lightdash-cli-0.2978.0-macos-x64.tar.gz"
      sha256 "72d9aab3580755451ef6c52c87b7263f6b581ba92a45f9d795de4dede8a46733"
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
