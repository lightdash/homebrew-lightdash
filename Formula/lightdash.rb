class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.172.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.4/lightdash-cli-1.172.4-macos-arm64.tar.gz"
      sha256 "a238da96fa0ca70d87cc674453eb974695508812af4a40767ec3de0be83eda3d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.4/lightdash-cli-1.172.4-macos-x64.tar.gz"
      sha256 "0bd70643d51c427f793531bd00738056a111541974c9108bb1b6c760b0f6dd9a"
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
