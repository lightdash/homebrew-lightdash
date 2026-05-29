class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3053.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3053.0/lightdash-cli-0.3053.0-macos-arm64.tar.gz"
      sha256 "63ae5f6666d72d29d6700a03d55c377345acc676532b2e7eb3d86db0fd48ce6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3053.0/lightdash-cli-0.3053.0-macos-x64.tar.gz"
      sha256 "43a91d687047e189f8625ea5f88f5477519dca68022c72aedab7ace0d7a7c23f"
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
