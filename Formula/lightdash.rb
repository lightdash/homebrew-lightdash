class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.235.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.235.0/lightdash-cli-3.235.0-macos-arm64.tar.gz"
      sha256 "b21ed8fa657adf6e6759e3b7df697c45c60156b8383d4e49f5d441396f28fb81"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.235.0/lightdash-cli-3.235.0-macos-x64.tar.gz"
      sha256 "0ea806327277b8f22547876567d7c8f7be5d2584ffaaf28f1533e57555a72396"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.235.0/lightdash-cli-3.235.0-linux-x64.tar.gz"
    sha256 "6865befcdf03ff859604617dc252516281c4c71668b3ed26a755fb4077e1c1b4"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
