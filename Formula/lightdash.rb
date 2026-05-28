class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3033.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3033.0/lightdash-cli-0.3033.0-macos-arm64.tar.gz"
      sha256 "a1ad62acb61b96fdda08731f7619ee18dc59e126e91a5b4ed0d1732b141cc06d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3033.0/lightdash-cli-0.3033.0-macos-x64.tar.gz"
      sha256 "4ba22ff5527099d8adb92b44079c789e624a8420353a0a6bba1f8135304d3e52"
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
