class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.565.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.2/lightdash-cli-2.565.2-macos-arm64.tar.gz"
      sha256 "bad90471181e0fcdfd47a8238a3a749171655a1ecf3f78140082ba16572ca156"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.2/lightdash-cli-2.565.2-macos-x64.tar.gz"
      sha256 "516b7d4bc5ed5422e1e2fdb519e034e92f9d65bee88d5a0e19121919858ea247"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.565.2/lightdash-cli-2.565.2-linux-x64.tar.gz"
    sha256 "526c058c5d5d363c8fc2986ed9e40fa425b7418846a8863e5911e5e8477633b2"

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
