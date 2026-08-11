class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.122.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.122.0/lightdash-cli-1.122.0-macos-arm64.tar.gz"
      sha256 "eba58af8c3e179f717a406972ad127a066379271fccbbe615633d09200a3678d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.122.0/lightdash-cli-1.122.0-macos-x64.tar.gz"
      sha256 "443769b9988832a0434f656bda38e72a69507f4ff29145a8e5547797a7f2b87f"
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
