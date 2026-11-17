class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.292.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.292.0/lightdash-cli-3.292.0-macos-arm64.tar.gz"
      sha256 "6a3e94a0d917be9695524c0f660c685213551394bf14a08077ab1713101ecf3f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.292.0/lightdash-cli-3.292.0-macos-x64.tar.gz"
      sha256 "e7c6394dd174f3481ffdc031c93a5f2da541dd7cb2fbb5617eab75cfc071cca2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.292.0/lightdash-cli-3.292.0-linux-x64.tar.gz"
    sha256 "debf835c4c6459f9a1aad343177faa3e191038562d4504436db5d79a64ff3692"

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
