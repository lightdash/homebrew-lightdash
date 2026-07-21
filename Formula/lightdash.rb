class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3436.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.1/lightdash-cli-0.3436.1-macos-arm64.tar.gz"
      sha256 "8e4931c831e3202c78bc0f83949a3ab714b7318638229345ade2210ae6e8454b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.1/lightdash-cli-0.3436.1-macos-x64.tar.gz"
      sha256 "5f9105c3105e5c37cf7d16bf84760d6886edb50c4ba1802254b91fd78bc1f09f"
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
