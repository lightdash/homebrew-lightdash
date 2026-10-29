class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.96.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.96.0/lightdash-cli-3.96.0-macos-arm64.tar.gz"
      sha256 "fda1be936a7edb1b2269485dacba4a48644220b06ed75bd281faf13eae322fc4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.96.0/lightdash-cli-3.96.0-macos-x64.tar.gz"
      sha256 "bd2d20d7a14a122f13bd9a684e1ee47c003691843495429b91cd8c2263923628"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.96.0/lightdash-cli-3.96.0-linux-x64.tar.gz"
    sha256 "dd165e6521701b863efdda4afcaa55c579145aad2ada246d1831ebba0d7fc378"

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
