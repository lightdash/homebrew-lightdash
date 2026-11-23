class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.367.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.2/lightdash-cli-3.367.2-macos-arm64.tar.gz"
      sha256 "e05f858fd310d2d16977ac0f4f023b8a45f89cdc994b1586304f33a6103d63a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.2/lightdash-cli-3.367.2-macos-x64.tar.gz"
      sha256 "f8c90757e5514c4938cf1851275ea2def7f90ae1567f2a7053cd983ee7de645f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.367.2/lightdash-cli-3.367.2-linux-x64.tar.gz"
    sha256 "af0409ad6f79605a765c5855fb1377efe95fe5ee487ec0ab5dae995943a09731"

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
