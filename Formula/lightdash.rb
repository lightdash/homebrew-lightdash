class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.5/lightdash-cli-3.53.5-macos-arm64.tar.gz"
      sha256 "8ff98c6dc87cc890e77726c68ec3f3071ff32898ed8096da01f631a44fa48d70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.5/lightdash-cli-3.53.5-macos-x64.tar.gz"
      sha256 "6562a299ea17aed9da7c05e47aaeca4faa1293c41be1a449e1a7b2cc44297d6b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.5/lightdash-cli-3.53.5-linux-x64.tar.gz"
    sha256 "710153e94d3e2d15226b1af6b4ed1094fc953232b2f2f287da5806b1b72f718a"

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
